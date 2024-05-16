import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/supabase.dart';
import 'package:mess/models/models.dart';
import 'package:mess/providers/supabase/profile/profile.dart';
import 'package:mess/services/supabase/supabase.dart';

class PendingConnectionsNotifier
    extends AsyncNotifier<List<SupabaseConnection>> {
  @override
  build() async {
    final userProfile = await ref.watch(userProfileProvider.future);

    final connections = await supabaseService.client
        .from(SupabaseTables.connections)
        .select(
          "*, recipient:${SupabaseTables.profile}!public_connections_recipient_id_fkey(*)",
        )
        .eq("status", SupabaseConnectionStatus.pending.name)
        .eq("pioneer_id", userProfile!.id)
        .withConverter((data) => data.map(SupabaseConnection.fromJson));
    return connections.toList().cast<SupabaseConnection>();
  }

  Future<void> create(String recipientId) async {
    final alreadyExists =
        state.asData?.value.any((s) => s.pioneerId == recipientId);
    if (state.asData?.value == null || alreadyExists!) return;

    final userProfile = await ref.read(userProfileProvider.future);

    await update((state) async {
      try {
        final newConnection = await supabaseService.client
            .from(SupabaseTables.connections)
            .insert({
              "pioneer_id": userProfile!.id,
              "recipient_id": recipientId,
            })
            .select()
            .single()
            .withConverter((json) => SupabaseConnection.fromJson(json));
        return [...state, newConnection];
      } catch (e) {
        return state;
      }
    });
  }
}

final pendingConnectionsProvider =
    AsyncNotifierProvider<PendingConnectionsNotifier, List<SupabaseConnection>>(
  () => PendingConnectionsNotifier(),
);
