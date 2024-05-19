import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/models/models.dart';
import 'package:mess/providers/supabase/connections/connections.dart';
import 'package:mess/providers/websocket/websocket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ConnectionMessageNotifier
    extends FamilyNotifier<List<WebsocketMessageEventData>, String> {
  WebSocketChannel get _websocket =>
      ref.read(websocketProvider.select((s) => s!.websocket));
  AsyncValue<SupabaseConnection> get _connection => ref.read(
        connectionsProvider.select((s) {
          return s.whenData((data) => data.firstWhere((e) => e.id == arg));
        }),
      );

  @override
  build(arg) {
    final wsState = ref.watch(websocketProvider);

    final subscription = wsState?.stream.listen((event) {
      if (event is! WebsocketReceiveMessageEvent ||
          event.data.connectionId != arg) return;

      state = [...state, event.data];
    });

    ref.onDispose(() {
      subscription?.cancel();
    });

    return [];
  }

  void sendMessage(String message) {
    if (message.isEmpty) return;

    final connection = _connection.asData?.value;
    final recipientId = (connection?.recipient ?? connection?.pioneer)?.id;

    if (recipientId == null) return;

    final data = WebsocketMessageEventData(
      connectionId: arg,
      recipientId: recipientId,
      message: message,
      createdAt: DateTime.now(),
    );

    _websocket.sink.add(
      jsonEncode(
        WebsocketEvent.sendMessage(
          event: WebsocketEventType.sendMessage,
          data: data,
        ).toJson(),
      ),
    );

    state = [...state, data];
  }
}

final connectionMessageProvider = NotifierProvider.family<
    ConnectionMessageNotifier, List<WebsocketMessageEventData>, String>(
  () => ConnectionMessageNotifier(),
);

final connectionMessagesGroupedProvider =
    Provider.family<Map<DateTime, List<WebsocketMessageEventData>>, String>(
  (ref, connectionId) {
    final messages = ref.watch(connectionMessageProvider(connectionId));

    return groupBy(
      messages.map(
        (e) => e.copyWith(
          createdAt: DateTime(
            e.createdAt.year,
            e.createdAt.month,
            e.createdAt.day,
          ),
        ),
      ),
      (e) => e.createdAt,
    );
  },
);
