import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/models/models.dart';
import 'package:mess/providers/supabase/profile/profile.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePageProfileSection extends HookConsumerWidget {
  const HomePageProfileSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:textTheme) = Theme.of(context);

    final profileQuery = ref.watch(userProfileProvider);

    final profile = profileQuery.asData?.value ?? Fake.profile;

    return Skeletonizer(
      enabled: profileQuery.isLoading,
      child: Row(
        children: [
          CircleAvatar(
            radius: 32,
            child: profile.avatarUrl == null
                ? const Icon(AppIcons.person, size: 36)
                : ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: CachedNetworkImage(
                      imageUrl: profile.avatarUrl!,
                    ),
                  ),
          ),
          const Gap(10),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${profile.firstName} ${profile.lastName}",
                style: textTheme.titleMedium,
              ),
              Text(profile.status ?? ""),
            ],
          ),
        ],
      ),
    );
  }
}
