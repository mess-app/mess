import 'dart:async';
import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/supabase.dart';
import 'package:mess/models/models.dart';
import 'package:mess/services/supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserProfileNotifier extends AsyncNotifier<SupabaseProfile?> {
  StreamSubscription? _subscription;

  UserProfileNotifier() {
    _subscription = supabaseService.onAuthStateChanged.listen((event) {
      if (event.event == AuthChangeEvent.signedIn &&
          state.asData?.value == null) {
        ref.invalidateSelf();
      }
    });
  }

  @override
  build() async {
    ref.onDispose(() {
      _subscription?.cancel();
    });

    try {
      final profile = await supabaseService.client
          .from(SupabaseTables.profile)
          .select("*")
          .single()
          .withConverter<SupabaseProfile>(SupabaseProfile.fromJson);

      if (profile.avatarUrl == null) return profile;

      final avatarUrl = await supabaseService.client.storage
          .from(SupabaseBuckets.avatars)
          .createSignedUrl(
            profile.avatarUrl!,
            const Duration(days: 1).inSeconds,
          );

      return profile.copyWith(avatarUrl: avatarUrl);
    } on PostgrestException catch (e) {
      if (e.code == "PGRST116") {
        return null;
      } else {
        rethrow;
      }
    }
  }

  Future<String> uploadAvatar(Uint8List bytes, String extension) async {
    if (state.asData?.value == null) throw Exception("Profile not found");

    final path = "${supabaseService.user!.id}$extension";

    await supabaseService.client.storage
        .from(SupabaseBuckets.avatars)
        .uploadBinary(
          path,
          bytes,
          fileOptions: const FileOptions(upsert: true, cacheControl: "3600"),
        );

    return path;
  }

  Future<void> create(SupabaseProfileInsert profile) async {
    if (state.asData?.value != null) return;

    await supabaseService.client.from(SupabaseTables.profile).insert(
          profile.toJson()..removeWhere((key, value) => value == null),
        );

    state = await AsyncValue.guard(() async => await build());
  }

  Future<void> updateIt(
    SupabaseProfileUpdate profile,
  ) async {
    if (state.asData?.value == null) return;

    await supabaseService.client
        .from(SupabaseTables.profile)
        .update(
          profile.toJson()..removeWhere((key, value) => value == null),
        )
        .eq("user_id", supabaseService.user!.id);
  }
}

final userProfileProvider =
    AsyncNotifierProvider<UserProfileNotifier, SupabaseProfile?>(
  () => UserProfileNotifier(),
);
