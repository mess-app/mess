import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/env.dart';
import 'package:mess/models/models.dart';
import 'package:mess/providers/supabase/profile/profile.dart';
import 'package:mess/services/supabase/supabase.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

typedef WebsocketState = ({
  WebSocketChannel websocket,
  Stream<WebsocketEvent> stream
});

class WebsocketNotifier extends Notifier<WebsocketState?> {
  @override
  build() {
    final profile = ref.watch(userProfileProvider);

    if (profile.asData?.value == null) return null;

    final websocket = WebSocketChannel.connect(
      Uri.parse(Env.serverUrl).replace(
        scheme: "ws",
        path: "/ws",
        queryParameters: {
          "token": supabaseService.session?.accessToken,
        },
      ).removeFragment(),
    );

    ref.onDispose(() {
      websocket.sink.close();
    });

    return (
      websocket: websocket,
      stream: websocket.stream.asBroadcastStream().map(
            (event) => WebsocketEvent.fromJson(
              jsonDecode(event),
            ),
          ),
    );
  }
}

final websocketProvider = NotifierProvider<WebsocketNotifier, WebsocketState?>(
  () => WebsocketNotifier(),
);
