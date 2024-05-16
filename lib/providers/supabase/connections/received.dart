import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/supabase.dart';
import 'package:mess/models/models.dart';
import 'package:mess/providers/supabase/profile/profile.dart';
import 'package:mess/services/supabase/supabase.dart';

class ReceivedNotifier extends AsyncNotifier<List<SupabaseConnection>> {
  @override
  build() async {
    final userProfile = await ref.watch(userProfileProvider.future);

    final connections = await supabaseService.client
        .from(SupabaseTables.connections)
        .select(
          "*, pioneer:${SupabaseTables.profile}!public_connections_pioneer_id_fkey(*)",
        )
        .eq("status", SupabaseConnectionStatus.pending.name)
        .eq("recipient_id", userProfile!.id)
        .withConverter((data) => data.map(SupabaseConnection.fromJson));

    return connections.toList();
  }

  Future<void> accept(String connectionId) async {
    if (state.asData?.value == null || state.asData!.value.isEmpty) return;

    final connection = state.asData!.value.firstWhere(
      (element) => element.id == connectionId,
    );

    if (connection.status == SupabaseConnectionStatus.connected) return;

    await supabaseService.client
        .from(SupabaseTables.connections)
        .update({"status": SupabaseConnectionStatus.connected.name}).eq(
            "id", connectionId);

    state = AsyncData(
      state.asData!.value
          .where((element) => element.id != connectionId)
          .toList(),
    );
  }

  Future<void> decline(String connectionId) async {
    if (state.asData?.value == null || state.asData!.value.isEmpty) return;

    final connection = state.asData!.value.firstWhere(
      (element) => element.id == connectionId,
    );

    if (connection.status == SupabaseConnectionStatus.declined) return;

    await supabaseService.client
        .from(SupabaseTables.connections)
        .update({"status": SupabaseConnectionStatus.declined.name}).eq(
            "id", connection.id);

    state = AsyncData(
      state.asData!.value
          .where((element) => element.id != connection.id)
          .toList(),
    );
  }
}

final receivedConnectionsProvider =
    AsyncNotifierProvider<ReceivedNotifier, List<SupabaseConnection>>(
  () => ReceivedNotifier(),
);
