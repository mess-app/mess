import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/models/models.dart';
import 'package:mess/modules/profile/profile_tile.dart';
import 'package:mess/providers/supabase/connections/connections.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ChatsPage extends HookConsumerWidget {
  static const name = "chats";
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme, :colorScheme) = Theme.of(context);

    final connectionsQuery = ref.watch(connectionsProvider);
    final connections =
        connectionsQuery.asData?.value ?? List.filled(5, Fake.connection);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        title: const Text("Chats"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SearchAnchor(
                suggestionsBuilder: (context, controller) {
                  return [];
                },
                builder: (context, controller) {
                  return SearchBar(
                    controller: controller,
                    hintText: "Search...",
                    leading: const Icon(AppIcons.search, size: 14),
                  );
                },
              ),
            ),
            const SliverGap(20),
            SliverSkeletonizer(
              enabled: connectionsQuery.isLoading,
              child: SliverList.builder(
                itemCount: connections.length,
                itemBuilder: (context, index) {
                  final connection = connections[index];

                  return ProfileTile(
                    profile: (connection.pioneer ?? connection.recipient)!,
                    subtitle: Text(
                      "Lol bro!",
                      style: textTheme.bodySmall?.copyWith(
                        color: Random().nextBool() ? colorScheme.primary : colorScheme.outlineVariant,
                      ),
                    ),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Gap(4),
                        const Badge(label: Text("3")),
                        const Gap(4),
                        Text(
                          "12:00 PM",
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.outlineVariant,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
