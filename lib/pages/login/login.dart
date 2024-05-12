import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/services/supabase/supabase.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginPage extends HookConsumerWidget {
  static const name = "login";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme) = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          const Gap(60),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mess",
                  style: GoogleFonts.k2dTextTheme(textTheme).displayMedium,
                ),
                const Text("Messaging as simple as it can be."),
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: SignInButton(
              Buttons.google,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onPressed: () async {
                await supabaseService.signInWithGoogle();
              },
            ),
          ),
          const Gap(40),
        ],
      ),
    );
  }
}
