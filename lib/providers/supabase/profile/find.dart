import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/supabase.dart';
import 'package:mess/models/models.dart';
import 'package:mess/providers/supabase/profile/profile.dart';
import 'package:mess/services/supabase/supabase.dart';

final findProfileProvider =
    FutureProvider.autoDispose.family<SupabaseProfile?, String>(
  (ref, username) async {
    final userProfile = await ref.watch(userProfileProvider.future);

    if (userProfile == null) return null;

    final profile = await supabaseService.client
        .from(SupabaseTables.profile)
        .select("*")
        .eq("username", username)
        .neq("username", userProfile.username)
        .limit(1)
        .withConverter<SupabaseProfile?>(
          (json) => json.isEmpty ? null : SupabaseProfile.fromJson(json.first),
        );

    if (profile == null) return null;

    if (profile.avatarUrl == null) return profile;

    final avatarUrl = await supabaseService.client.storage
        .from(SupabaseBuckets.avatars)
        .createSignedUrl(
          profile.avatarUrl!,
          const Duration(days: 1).inSeconds,
        );

    return profile.copyWith(avatarUrl: avatarUrl);
  },
);
