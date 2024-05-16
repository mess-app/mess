import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/models/models.dart';
import 'package:mess/modules/profile/profile_tile.dart';
import 'package:mess/providers/supabase/connections/pending.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PendingConnectionsPage extends HookConsumerWidget {
  static const name = "pending_connections_page";
  const PendingConnectionsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final pendingConnectionsQuery = ref.watch(pendingConnectionsProvider);
    final pendingConnections = pendingConnectionsQuery.when(
      data: (data) => data,
      loading: () => List.generate(5, (i) => Fake.connection),
      error: (_, __) => [],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pending Connections"),
      ),
      body: Skeletonizer(
        enabled: pendingConnectionsQuery.isLoading,
        child: ListView.builder(
          itemCount: pendingConnections.length,
          itemBuilder: (context, index) {
            final pendingConnection = pendingConnections[index];

            return ProfileTile(profile: pendingConnection.recipient!);
          },
        ),
      ),
    );
  }
}
