import 'package:collection/collection.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:mess/collections/icons.dart';
import 'package:mess/collections/supabase.dart';
import 'package:mess/models/models.dart';
import 'package:mess/pages/shell/home/home.dart';
import 'package:mess/providers/supabase/profile/profile.dart';
import 'package:mess/services/supabase/supabase.dart';
import 'package:mess/utils/platform.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:path/path.dart';

class LoginProfilePage extends HookConsumerWidget {
  static const name = "login_profile_page";
  const LoginProfilePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final formKey = useMemoized(() => GlobalKey<FormBuilderState>(), []);
    final profileNotifier = ref.read(userProfileProvider.notifier);

    final usernameExitsRef = useRef<String?>(null);

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: FormBuilder(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FormBuilderImagePicker(
                name: "avatar",
                icon: AppIcons.camera,
                cameraIcon: const Icon(AppIcons.camera),
                galleryIcon: const Icon(AppIcons.gallery),
                backgroundColor: Colors.transparent,
                maxImages: 1,
                maxWidth: 1920,
                maxHeight: 1920,
                availableImageSources: [
                  ImageSourceOption.gallery,
                  if (kIsMobile) ImageSourceOption.camera,
                ],
              ),
              const Gap(40),
              FormBuilderTextField(
                name: "first_name",
                validator: FormBuilderValidators.required(),
                decoration: const InputDecoration(hintText: "First Name"),
              ),
              const Gap(10),
              FormBuilderTextField(
                name: "last_name",
                decoration: const InputDecoration(hintText: "Last Name"),
              ),
              const Gap(10),
              FormBuilderTextField(
                name: "username",
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.match(
                    r"^[a-z][a-z0-9_]*[a-z0-9]$",
                    errorText: "User name can only contain a-z, 0-9, and _",
                  ),
                  (val) {
                    if (usernameExitsRef.value != null &&
                        usernameExitsRef.value == val) {
                      return "Username already exits.";
                    }
                    return null;
                  },
                  FormBuilderValidators.required(),
                ]),
                decoration: const InputDecoration(
                  hintText: "Username",
                  errorMaxLines: 2,
                ),
              ),
              const Gap(30),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Continue"),
                      Gap(10),
                      Icon(AppIcons.arrowRight, size: 18),
                    ],
                  ),
                  onPressed: () async {
                    if (formKey.currentState?.saveAndValidate() != true) {
                      return;
                    }

                    final usernameExists = await supabaseService.client
                        .from(SupabaseTables.profile)
                        .select("username")
                        .eq(
                          "username",
                          formKey.currentState!.value["username"],
                        )
                        .limit(1);

                    if (usernameExists.isNotEmpty) {
                      usernameExitsRef.value =
                          formKey.currentState!.value["username"];
                      formKey.currentState?.validate();
                      return;
                    } else if (usernameExists.isEmpty &&
                        usernameExitsRef.value != null) {
                      formKey.currentState?.saveAndValidate();
                      usernameExitsRef.value = null;
                    }

                    final avatar =
                        ((formKey.currentState!.value["avatar"] as List?)
                            ?.firstOrNull) as XFile?;

                    await profileNotifier.create(
                      SupabaseProfileInsert(
                        firstName: formKey.currentState!.value["first_name"],
                        lastName: formKey.currentState!.value["last_name"],
                        username: formKey.currentState!.value["username"],
                        userId: supabaseService.user!.id,
                      ),
                    );

                    if (avatar != null) {
                      await profileNotifier.updateIt(
                        SupabaseProfileUpdate(
                          avatarUrl: await profileNotifier.uploadAvatar(
                            await avatar.readAsBytes(),
                            extension(avatar.path),
                          ),
                        ),
                      );
                    }

                    if (context.mounted) {
                      context.goNamed(HomePage.name);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
