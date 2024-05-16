import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/modules/settings/sections/account.dart';
import 'package:mess/modules/settings/sections/ui.dart';

class SettingsPage extends HookConsumerWidget {
  static const name = "settings";
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: const [
          SettingsPageAccountSection(),
          Gap(10),
          SettingsPageUserInterfaceSection(),
        ],
      ),
    );
  }
}
