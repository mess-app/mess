import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/pages/shell/chats/chats.dart';
import 'package:mess/pages/shell/home/home.dart';
import 'package:mess/pages/shell/store/store.dart';
import 'package:mess/providers/websocket/websocket.dart';

const routeItems = [
  (
    icon: AppIcons.home,
    selectedIcon: AppIcons.homeFilled,
    title: "Home",
    routeName: HomePage.name,
    path: "/"
  ),
  (
    icon: AppIcons.chats,
    selectedIcon: AppIcons.chatsFilled,
    title: "Chats",
    routeName: ChatsPage.name,
    path: "/chats"
  ),
  (
    icon: AppIcons.store,
    selectedIcon: AppIcons.storeFilled,
    title: "Store",
    routeName: StorePage.name,
    path: "/store"
  ),
];

class ShellPage extends HookConsumerWidget {
  final Widget child;
  const ShellPage({super.key, required this.child});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:colorScheme) = Theme.of(context);
    final GoRouterState(:matchedLocation) = GoRouterState.of(context);

    ref.read(websocketProvider);

    final selectedIndex = useMemoized(
      () {
        final index =
            routeItems.indexWhere((item) => item.path == matchedLocation);

        return index == -1 ? 0 : index;
      },
      [matchedLocation],
    );

    return Scaffold(
      bottomNavigationBar: BottomBarInspiredFancy(
        backgroundColor: colorScheme.background.withOpacity(0.63),
        color: colorScheme.onBackground,
        colorSelected: colorScheme.primary,
        indexSelected: selectedIndex,
        enableShadow: false,
        boxShadow: const [],
        blur: 4,
        top: 5,
        bottom: 5,
        iconSize: 20,
        styleIconFooter: StyleIconFooter.dot,
        onTap: (index) {
          final item = routeItems[index];
          context.goNamed(item.routeName);
        },
        items: [
          for (final item in routeItems)
            TabItem(
              icon:
                  item.path == matchedLocation ? item.selectedIcon : item.icon,
            ),
        ],
      ),
      body: child,
    );
  }
}
