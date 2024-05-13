import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/icons.dart';

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
    );
  }
}
