import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/formatters.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/models/models.dart';
import 'package:mess/providers/supabase/connections/connections.dart';
import 'package:mess/providers/supabase/profile/profile.dart';

class ChatTile extends HookConsumerWidget {
  final WebsocketMessageEventData message;
  const ChatTile({super.key, required this.message});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:colorScheme) = Theme.of(context);

    final connection = ref.read(
      connectionsProvider.select((s) {
        return s.whenData(
            (data) => data.firstWhere((e) => e.id == message.connectionId));
      }),
    );
    final recipient = (connection.asData?.value.recipient ??
        connection.asData?.value.pioneer)!;

    final userProfile = ref.watch(userProfileProvider);

    final isUser = message.recipientId != userProfile.asData?.value?.id;

    final children = [
      const Gap(5),
      if (!isUser)
        CircleAvatar(
          radius: 14,
          backgroundColor: colorScheme.surface,
          backgroundImage: recipient.avatarUrl != null
              ? CachedNetworkImageProvider(recipient.avatarUrl!)
              : null,
          child: recipient.avatarUrl == null
              ? const Icon(AppIcons.person, size: 16)
              : null,
        ),
      const Gap(5),
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.7,
        ),
        decoration: BoxDecoration(
          color: message.recipientId != userProfile.asData?.value?.id
              ? colorScheme.primary
              : colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message.message,
          style: TextStyle(
            color: isUser ? colorScheme.onPrimary : colorScheme.onSurface,
          ),
        ),
      ),
      const Gap(5),
      Text(
        formatTimeAsHourMinute.format(message.createdAt),
        style: const TextStyle(fontSize: 10),
      ),
    ];

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: isUser ? children.reversed.toList() : children,
    );
  }
}
