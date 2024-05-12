import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mess/collections/env.dart';
import 'package:mess/utils/platform.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:crypto/crypto.dart';

class SupabaseService {
  final Stream<AuthState> onAuthStateChanged;

  SupabaseService._()
      : onAuthStateChanged =
            Supabase.instance.client.auth.onAuthStateChange.asBroadcastStream();

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: Env.supabaseUrl,
      anonKey: Env.supabaseAnonKey,
      debug: kDebugMode,
    );
  }

  SupabaseClient get client => Supabase.instance.client;

  Session? get session => Supabase.instance.client.auth.currentSession;
  User? get user => session?.user;

  Future<void> signInWithApple() async {
    if (kIsMacOS || kIsIOS) {
      final rawNonce = client.auth.generateRawNonce();
      final hashedNonce = sha256.convert(utf8.encode(rawNonce)).toString();

      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: hashedNonce,
      );

      final idToken = credential.identityToken;
      if (idToken == null) {
        throw const AuthException(
            'Could not find ID Token from generated credential.');
      }

      await client.auth.signInWithIdToken(
        provider: OAuthProvider.apple,
        idToken: idToken,
        nonce: rawNonce,
      );
    } else {
      await client.auth.signInWithOAuth(
        OAuthProvider.apple,
        redirectTo: Env.loginCallbackUrl,
      );
    }
  }

  Future<void> signInWithGoogle() async {
    if (kIsIOS || kIsAndroid) {
      final googleSignIn = GoogleSignIn(
        clientId: Env.googleIosClientId,
        serverClientId: Env.googleWebClientId,
      );
      final googleUser = await googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;
      final accessToken = googleAuth.accessToken;
      final idToken = googleAuth.idToken;

      if (accessToken == null) {
        throw 'No Access Token found.';
      }
      if (idToken == null) {
        throw 'No ID Token found.';
      }

      await client.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );
    } else {
      await client.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: Env.loginCallbackUrl,
      );
    }
  }

  Future<void> signOut() async {
    await client.auth.signOut();
  }
}

final supabaseService = SupabaseService._();
