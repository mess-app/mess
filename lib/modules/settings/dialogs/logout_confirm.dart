import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/icons.dart';

class SettingsLogoutConfirmationDialog extends HookConsumerWidget {
  const SettingsLogoutConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return AlertDialog(
      title: const Center(child: Icon(AppIcons.warning)),
      content: const Text("Do you want to sign out of this account?"),
      actions: [
        FilledButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: const Text("No"),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
          ),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text("Confirm"),
        ),
      ],
    );
  }
}
