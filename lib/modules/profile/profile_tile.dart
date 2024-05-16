import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/models/models.dart';

class ProfileTile extends StatelessWidget {
  final SupabaseProfile profile;

  final Widget? trailing;
  final bool selected;
  final VoidCallback? onTap;
  const ProfileTile({
    super.key,
    required this.profile,
    this.trailing,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: profile.avatarUrl == null
            ? null
            : CachedNetworkImageProvider(
                profile.avatarUrl ?? "",
              ),
        child: profile.avatarUrl == null ? const Icon(AppIcons.person) : null,
      ),
      title: Text("${profile.firstName} ${profile.lastName}"),
      subtitle: profile.status == null ? null : Text(profile.status!),
      trailing: trailing,
      selected: selected,
      onTap: selected ? null : onTap,
    );
  }
}
