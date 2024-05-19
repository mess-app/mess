import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/formatters.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/models/models.dart';
import 'package:mess/modules/chats/chat/chat_tile.dart';
import 'package:mess/providers/supabase/connections/connections.dart';
import 'package:mess/providers/supabase/profile/profile.dart';
import 'package:mess/providers/websocket/connection/connection.dart';
import 'package:skeletonizer/skeletonizer.dart';

final today = DateTime.now();

class ChatPage extends HookConsumerWidget {
  static const name = "chat_page";

  final String connectionId;
  const ChatPage({super.key, required this.connectionId});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:colorScheme, :textTheme) = Theme.of(context);
    final scrollController = useScrollController();
    final messageController = useTextEditingController();
    final focusNode = useFocusNode();

    final userProfile = ref.watch(userProfileProvider);

    final connection = ref.watch(
      connectionsProvider.select(
        (s) =>
            s.whenData((data) => data.firstWhere((e) => e.id == connectionId)),
      ),
    );

    final isEditing = useState(false);

    final messages = ref.watch(connectionMessagesGroupedProvider(connectionId));
    final messagesNotifier =
        ref.watch(connectionMessageProvider(connectionId).notifier);

    final connectionRecipient = connection.asData?.value.recipient ??
        connection.asData?.value.pioneer ??
        Fake.profile;

    void onSendMessage() {
      messagesNotifier.sendMessage(messageController.text);
      messageController.clear();
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.decelerate,
      );
      focusNode.requestFocus();
    }

    return Skeletonizer(
      enabled: connection.isLoading,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  isEditing.value = false;
                },
                child: Container(
                  color: colorScheme.primaryContainer,
                  child: CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      SliverAppBar(
                        title: Text(
                            "${connectionRecipient.firstName} ${connectionRecipient.lastName}"),
                        titleSpacing: 0,
                        floating: true,
                        actions: [
                          IconButton(
                            icon: const Icon(AppIcons.call, size: 20),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(AppIcons.hamBurger),
                            onPressed: () {},
                          ),
                          const Gap(5),
                        ],
                        toolbarHeight: 48,
                      ),
                      const SliverGap(10),
                      for (final MapEntry(key: date, value: messages)
                          in messages.entries)
                        SliverMainAxisGroup(
                          slivers: [
                            SliverToBoxAdapter(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 5,
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: colorScheme.secondaryContainer
                                          .withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      today.difference(date).inDays == 0
                                          ? "Today"
                                          : formatDateAsDayMonth.format(date),
                                      style: textTheme.bodySmall?.copyWith(
                                        color: colorScheme.onSecondaryContainer,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SliverGap(10),
                            SliverList.separated(
                              itemCount: messages.length,
                              separatorBuilder: (context, index) {
                                if (index == messages.length - 1) {
                                  return const Gap(20);
                                }

                                final message = messages[index];
                                final nextMessage = messages[index + 1];
                                final isUser = message.recipientId !=
                                    userProfile.asData?.value?.id;
                                final isNextUser = nextMessage.recipientId !=
                                    userProfile.asData?.value?.id;

                                if (isUser && isNextUser) {
                                  return const Gap(10);
                                }

                                return const Gap(20);
                              },
                              itemBuilder: (context, index) {
                                final message = messages[index];

                                return ChatTile(message: message);
                              },
                            ),
                          ],
                        ),
                      const SliverGap(10),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colorScheme.surfaceVariant,
                border: Border(
                  top: BorderSide(
                    color: colorScheme.secondaryContainer,
                    width: 1,
                  ),
                ),
              ),
              child: IconButtonTheme(
                data: IconButtonThemeData(
                  style: IconButton.styleFrom(
                    iconSize: 18,
                    minimumSize: const Size.square(25),
                  ),
                ),
                child: Row(
                  children: [
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      // slide from right to left with fade in effect
                      transitionBuilder: (child, animation) {
                        final offset = Tween<Offset>(
                          begin: const Offset(1, 0),
                          end: Offset.zero,
                        ).animate(animation);
                        final fade = Tween<double>(
                          begin: 0,
                          end: 1,
                        ).animate(animation);
                        return FadeTransition(
                          opacity: fade,
                          child: SlideTransition(
                            position: offset,
                            child: child,
                          ),
                        );
                      },

                      child: isEditing.value
                          ? IconButton(
                              icon: const Icon(AppIcons.chevronRight),
                              onPressed: () {
                                isEditing.value = false;
                              },
                            )
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(AppIcons.plus),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Icon(AppIcons.gallery),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Icon(AppIcons.video),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                    ),
                    const Gap(5),
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        focusNode: focusNode,
                        onTap: () {
                          isEditing.value = true;
                        },
                        onSubmitted: (value) {
                          onSendMessage();
                        },
                        decoration: InputDecoration(
                          hintText: 'Type a message',
                          fillColor: colorScheme.surface,
                          focusColor: colorScheme.surface,
                          hoverColor: colorScheme.surface,
                          constraints: const BoxConstraints(
                            minHeight: 35,
                            maxHeight: 35,
                          ),
                        ),
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    const Gap(5),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 200),
                      child: isEditing.value
                          ? IconButton(
                              icon: const Icon(AppIcons.send),
                              style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                backgroundColor: colorScheme.primary,
                                foregroundColor: colorScheme.onPrimary,
                              ),
                              onPressed: () {
                                onSendMessage();
                              },
                            )
                          : IconButton(
                              icon: const Icon(AppIcons.mic),
                              onPressed: () {},
                            ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
