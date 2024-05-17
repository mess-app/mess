import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/models/models.dart';
import 'package:mess/providers/supabase/profile/find.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ChatPage extends HookConsumerWidget {
  static const name = "chat_page";

  final String username;
  const ChatPage({super.key, required this.username});

  @override
  Widget build(BuildContext context, ref) {
    final ThemeData(:colorScheme) = Theme.of(context);
    final profileQuery = ref.watch(findProfileProvider(username));
    final profile = profileQuery.asData?.value ?? Fake.profile;
    final isEditing = useState(false);

    return Skeletonizer(
      enabled: profileQuery.isLoading,
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
                    slivers: [
                      SliverAppBar(
                        title: Text("${profile.firstName} ${profile.lastName}"),
                        titleSpacing: 0,
                        floating: false,
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
                        onTap: () {
                          isEditing.value = true;
                        },
                        onSubmitted: (value) {
                          isEditing.value = false;
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
                          ? IconButton.filled(
                              icon: const Icon(AppIcons.send),
                              style: IconButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              onPressed: () {},
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
