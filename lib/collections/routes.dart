import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/pages/add_friends/add_friends.dart';
import 'package:mess/pages/login/login.dart';
import 'package:mess/pages/login/profile/profile.dart';
import 'package:mess/pages/settings/settings.dart';
import 'package:mess/pages/shell/chats/chats.dart';
import 'package:mess/pages/shell/home/home.dart';
import 'package:mess/pages/shell/shell.dart';
import 'package:mess/pages/shell/store/store.dart';
import 'package:mess/providers/supabase/profile/profile.dart';
import 'package:mess/services/supabase/supabase.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider((ref) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: "/login",
    routes: [
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        builder: (context, state, child) => ShellPage(child: child),
        redirect: (context, state) {
          if (supabaseService.user == null) {
            return "/login";
          }

          return null;
        },
        routes: [
          GoRoute(
            path: "/",
            name: HomePage.name,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: "/chats",
            name: ChatsPage.name,
            builder: (context, state) => const ChatsPage(),
          ),
          GoRoute(
            path: "/store",
            name: StorePage.name,
            builder: (context, state) => const StorePage(),
          ),
        ],
      ),
      GoRoute(
        path: "/settings",
        name: SettingsPage.name,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const SettingsPage(),
      ),
      GoRoute(
        path: "/login",
        name: LoginPage.name,
        redirect: (context, state) async {
          final profile = await ref.read(userProfileProvider.future);

          if (supabaseService.user != null && profile != null) {
            return "/";
          } else if (supabaseService.user != null && profile == null) {
            return "/login/profile";
          }

          return null;
        },
        builder: (context, state) => const LoginPage(),
        routes: [
          GoRoute(
            path: "profile",
            redirect: (context, state) async {
              if (supabaseService.user == null) {
                return "/login";
              }

              final profile = await ref.read(userProfileProvider.future);

              if (profile != null) {
                return "/";
              }

              return null;
            },
            name: LoginProfilePage.name,
            builder: (context, state) => const LoginProfilePage(),
          ),
        ],
      ),
      GoRoute(
        path: "/add-friends",
        name: AddFriendsPage.name,
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const AddFriendsPage(),
      ),
    ],
  );
});
