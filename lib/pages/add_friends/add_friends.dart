import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/modules/profile/profile_tile.dart';
import 'package:mess/pages/add_friends/pending_connections/pending_connections.dart';
import 'package:mess/providers/supabase/connections/pending.dart';
import 'package:mess/providers/supabase/profile/find.dart';

class AddFriendsPage extends HookConsumerWidget {
  static const name = "add_friends_page";
  const AddFriendsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:colorScheme) = Theme.of(context);

    final controller = useTextEditingController();
    final searchText = useState(controller.text);
    final findProfile = ref.watch(findProfileProvider(searchText.value));
    final pendingConnectionsQuery = ref.watch(pendingConnectionsProvider);
    final pendingConnections = pendingConnectionsQuery.asData?.value ?? [];
    final pendingConnectionsNotifier =
        ref.watch(pendingConnectionsProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("New connection"),
        actions: [
          IconButton(
            icon: const Icon(AppIcons.deliveryDone),
            onPressed: () {
              context.pushNamed(PendingConnectionsPage.name);
            },
          ),
          const Gap(5),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverList.list(
              children: [
                TextField(
                  autofocus: true,
                  controller: controller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(AppIcons.person),
                    hintText: "Username...",
                    errorText: findProfile.asData?.value == null &&
                            !findProfile.isLoading &&
                            searchText.value.isNotEmpty
                        ? "User not found"
                        : null,
                    suffixIcon: ListenableBuilder(
                        listenable: controller,
                        builder: (context, _) {
                          return AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: controller.text.isEmpty
                                ? const SizedBox.shrink()
                                : IconButton(
                                    icon: const Icon(AppIcons.clear),
                                    onPressed: () {
                                      controller.clear();
                                      searchText.value = "";
                                    },
                                  ),
                          );
                        }),
                  ),
                  onSubmitted: (value) {
                    searchText.value = value;
                  },
                ),
                const Gap(20),
                switch (findProfile) {
                  AsyncData(:final value) => Builder(builder: (context) {
                      if (value == null) return const SizedBox.shrink();
                      final alreadySent = pendingConnections
                          .any((s) => s.recipientId == value.id);

                      return ProfileTile(
                        profile: value,
                        trailing: alreadySent
                            ? Icon(AppIcons.deliveryDone,
                                color: colorScheme.primary)
                            : const Icon(AppIcons.personAdd),
                        selected: alreadySent,
                        onTap: alreadySent
                            ? null
                            : () async {
                                await pendingConnectionsNotifier
                                    .create(value.id);
                              },
                      );
                    }),
                  AsyncLoading() =>
                    const Center(child: CircularProgressIndicator()),
                  _ => Center(
                      child: Text(
                          "Failed to find user with ${searchText.value} username")),
                }
              ],
            ),
          ],
        ),
      ),
    );
  }
}
