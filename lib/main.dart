import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/routes.dart';
import 'package:mess/collections/theme/theme.dart';
import 'package:mess/providers/preferences/preferences.dart';
import 'package:mess/services/supabase/supabase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SupabaseService.initialize();

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends HookConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(preferencesProvider.select((s) => s.themeMode));

    return MaterialApp.router(
      title: "Mess",
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
    );
  }
}
