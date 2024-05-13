import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/modules/home/sections/profile.dart';

class HomePage extends HookConsumerWidget {
  static const name = "home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme) = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("MESS"),
        titleTextStyle:
            textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(AppIcons.personAdd),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(AppIcons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          slivers: [
            SliverList.list(
              children: [
                SearchAnchor(
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
                const Gap(16),
                const HomePageProfileSection()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
