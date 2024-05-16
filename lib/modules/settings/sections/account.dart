import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/modules/settings/dialogs/logout_confirm.dart';
import 'package:mess/modules/settings/section.dart';
import 'package:mess/pages/login/login.dart';
import 'package:mess/services/supabase/supabase.dart';

class SettingsPageAccountSection extends HookConsumerWidget {
  const SettingsPageAccountSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:colorScheme) = Theme.of(context);

    return SettingsSection(
      heading: "Accounts",
      children: [
        const ListTile(
          leading: Icon(AppIcons.person),
          title: Text("Profile"),
          trailing: Icon(AppIcons.chevronRight),
        ),
        ListTile(
          textColor: colorScheme.error,
          iconColor: colorScheme.error,
          leading: const Icon(AppIcons.signOut),
          title: const Text("Sign out"),
          onTap: () async {
            final isConfirmed = await showDialog<bool>(
                  context: context,
                  builder: (context) =>
                      const SettingsLogoutConfirmationDialog(),
                ) ??
                false;

            if (!isConfirmed) return;

            await supabaseService.signOut();
            if (context.mounted) {
              context.goNamed(LoginPage.name);
            }
          },
        ),
      ],
    );
  }
}
