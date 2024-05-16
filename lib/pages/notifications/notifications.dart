import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/modules/profile/profile_tile.dart';
import 'package:mess/providers/supabase/connections/received.dart';

class NotificationsPage extends HookConsumerWidget {
  static const name = "notifications";

  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final receivedConnections = ref.watch(receivedConnectionsProvider);
    final receivedConnectionsNotifier =
        ref.read(receivedConnectionsProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
      body: CustomScrollView(
        slivers: [
          receivedConnections.when(
            data: (connections) {
              return SliverList.builder(
                itemCount: connections.length,
                itemBuilder: (context, index) {
                  final connection = connections[index];

                  return ProfileTile(
                      profile: connection.pioneer!,
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(AppIcons.personCheck),
                            onPressed: () async {
                              await receivedConnectionsNotifier
                                  .accept(connection.id);
                            },
                          ),
                          IconButton(
                            icon: const Icon(AppIcons.clear),
                            onPressed: () async {
                              await receivedConnectionsNotifier
                                  .decline(connection.id);
                            },
                          ),
                        ],
                      ));
                },
              );
            },
            loading: () => const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (error, _) => SliverToBoxAdapter(
              child: Center(
                child: Text("Error: $error"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
