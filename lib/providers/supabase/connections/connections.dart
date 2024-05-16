import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/supabase.dart';
import 'package:mess/models/models.dart';
import 'package:mess/providers/supabase/profile/profile.dart';
import 'package:mess/services/supabase/supabase.dart';

final connectionsProvider = FutureProvider((ref) async {
  final userProfile = await ref.watch(userProfileProvider.future);

  final recipientConnections = await supabaseService.client
      .from(SupabaseTables.connections)
      .select(
        "*, pioneer:${SupabaseTables.profile}!public_connections_pioneer_id_fkey(*)",
      )
      .eq("status", SupabaseConnectionStatus.connected.name)
      .eq("recipient_id", userProfile!.id)
      .withConverter((data) => data.map(SupabaseConnection.fromJson));

  final pioneerConnections = await supabaseService.client
      .from(SupabaseTables.connections)
      .select(
        "*, recipient:${SupabaseTables.profile}!public_connections_recipient_id_fkey(*)",
      )
      .eq("status", SupabaseConnectionStatus.connected.name)
      .eq("pioneer_id", userProfile.id)
      .withConverter((data) => data.map(SupabaseConnection.fromJson));

  return [...recipientConnections, ...pioneerConnections];
});
