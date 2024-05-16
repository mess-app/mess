import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/modules/settings/section.dart';
import 'package:basics/basics.dart';
import 'package:mess/providers/preferences/preferences.dart';

class SettingsPageUserInterfaceSection extends HookConsumerWidget {
  const SettingsPageUserInterfaceSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final preferences = ref.watch(preferencesProvider);
    final preferencesNotifier = ref.read(preferencesProvider.notifier);

    return SettingsSection(
      heading: "User Interface",
      children: [
        ListTile(
          leading: const Icon(AppIcons.palette),
          title: const Text("Theme"),
          trailing: DropdownButton<ThemeMode>(
            items: [
              for (final mode in ThemeMode.values)
                DropdownMenuItem(
                  value: mode,
                  child: Text(mode.name.capitalize()),
                ),
            ],
            value: preferences.themeMode,
            onChanged: (value) {
              if (value == null) return;

              preferencesNotifier.setThemeMode(value);
            },
          ),
        ),
      ],
    );
  }
}
