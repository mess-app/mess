import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/supabase.dart';
import 'package:mess/models/models.dart';
import 'package:mess/services/supabase/supabase.dart';

class PendingConnectionsNotifier
    extends AsyncNotifier<List<SupabaseConnection>> {
  @override
  FutureOr<List<SupabaseConnection>> build() async {
    final connections = await supabaseService.client
        .from(SupabaseTables.connections)
        .select("*")
        .eq("status", SupabaseConnectionStatus.pending.name)
        .eq("pioneer", supabaseService.user!.id)
        .withConverter((data) => data.map(SupabaseConnection.fromJson));
    return connections.toList();
  }

  Future<void> create(String recipient) async {
    final alreadyExists =
        state.asData?.value.any((s) => s.pioneer == recipient);
    if (state.asData?.value == null || alreadyExists!) return;

    await update((state) async {
      try {
        final newConnection = await supabaseService.client
            .from(SupabaseTables.connections)
            .insert({
              "pioneer": supabaseService.user!.id,
              "recipient": recipient,
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
