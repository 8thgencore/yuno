import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:yuno/api/user/models.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/main/profile/profile_page/bloc/profile_bloc.dart';
import 'package:yuno/ui/widgets/error_container.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl.get<ProfileBloc>()..add(const ProfileEvent.started()),
      child: BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (_, current) => current == const ProfileState.logout(),
        listener: (context, state) {
          context.goNamed(RouteName.login);
        },
        child: const Scaffold(
          backgroundColor: AppColors.screen100,
          body: SafeArea(child: _ProfileContentWidget()),
        ),
      ),
    );
  }
}

class _ProfileContentWidget extends StatelessWidget {
  const _ProfileContentWidget();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(),
          const _HeaderWidget(),
          const Spacer(),
          ProfileButtonWidget(
            text: l10n.profilePageEditProfile,
            icon: Assets.svg.edit.svg(
              height: 28,
              colorFilter: const ColorFilter.mode(AppColors.primary100, BlendMode.srcIn),
            ),
            onPressed: () async {
              final result = await context.pushNamed<bool>(RouteName.profileEdit);
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (result ?? false) {
                  context.read<ProfileBloc>().add(const ProfileEvent.update());
                }
              });
            },
          ),
          const SizedBox(height: 16),
          ProfileButtonWidget(
            text: l10n.profilePageChangePassword,
            icon: Assets.svg.lock.svg(
              height: 28,
              colorFilter: const ColorFilter.mode(AppColors.secondary100, BlendMode.srcIn),
            ),
            onPressed: () => context.goNamed(RouteName.profileChangePassword),
          ),
          const SizedBox(height: 16),
          ProfileButtonWidget(
            text: l10n.profilePageMyProject,
            icon: Assets.svg.project.svg(
              height: 28,
              colorFilter: const ColorFilter.mode(AppColors.primary100, BlendMode.srcIn),
            ),
            onPressed: () async => context.pushNamed(RouteName.profileProjects),
          ),
          const SizedBox(height: 16),
          ProfileButtonWidget(
            text: l10n.logout,
            icon: Assets.svg.logout.svg(
              height: 28,
              colorFilter: const ColorFilter.mode(AppColors.secondary100, BlendMode.srcIn),
            ),
            onPressed: () => context.read<ProfileBloc>().add(const ProfileEvent.logout()),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatefulWidget {
  const _HeaderWidget();

  @override
  State<_HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<_HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) => state.maybeWhen(
        loading: () => const SizedBox(
          height: 255,
          child: Center(child: CircularProgressIndicator()),
        ),
        loaded: (user, error) {
          if (error != null) {
            // showToast(
            //   context,
            //   child: ToastWidget(
            //     text: error,
            //     type: ToastType.failure,
            //   ),
            // );
          }
          return Column(
            children: [
              AvatarWidget(image: user.image),
              const SizedBox(height: 20),
              if (user.firstName == '' && user.lastName == '')
                Text(user.username, style: AppTypography.b22d, maxLines: 1)
              else
                Text('${user.firstName} ${user.lastName}', style: AppTypography.b22d, maxLines: 1),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: AppColors.white100,
                ),
                child: Text(user.email, style: AppTypography.l12d),
              ),
            ],
          );
        },
        failure: (_) => const SizedBox(
          height: 255,
          child: ErrorContainer(text: 'Unexpected Error. Restart the app'),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    this.image,
    super.key,
  });

  final IImageMediaRead? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 152,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment(1, -0.8),
          colors: [AppColors.primary100, AppColors.screen100],
        ),
        borderRadius: BorderRadius.circular(76),
      ),
      child: ClipOval(
        child: Container(
          color: AppColors.screen100,
          padding: const EdgeInsets.all(8),
          child: ClipOval(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.white100,
                border: Border.all(color: AppColors.white100, width: 4),
              ),
              child: ClipOval(
                child: Stack(
                  children: [
                    buildImage(image: image),
                    const Positioned(
                      left: 44,
                      bottom: 8,
                      child: _EditAvatarWidget(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage({IImageMediaRead? image}) {
    if (image != null) {
      return CachedNetworkImage(
        imageUrl: image.media.link ?? '',
        height: 132,
        width: 132,
        fit: BoxFit.cover,
      );
    } else {
      return Assets.images.avatar.image(height: 132, fit: BoxFit.cover);
    }
  }
}

class _EditAvatarWidget extends StatefulWidget {
  const _EditAvatarWidget();

  @override
  State<_EditAvatarWidget> createState() => _EditAvatarWidgetState();
}

class _EditAvatarWidgetState extends State<_EditAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final result = await FilePicker.platform.pickFiles(
          type: FileType.image,
        );
        if (result != null) {
          if (!mounted) {
            return;
          }
          context.read<ProfileBloc>().add(ProfileEvent.loadImage(result.files.first));
        } else {
          // logger.warning("Error upload image");
        }
      },
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.white60,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Assets.svg.pencil.svg(),
        ),
      ),
    );
  }
}

class ProfileButtonWidget extends StatelessWidget {
  const ProfileButtonWidget({
    required this.icon,
    required this.text,
    this.onPressed,
    super.key,
  });

  final Widget icon;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.centerLeft,
        minimumSize: const Size(double.infinity, 68),
        backgroundColor: AppColors.white100,
        foregroundColor: AppColors.dark100,
        textStyle: AppTypography.r16d,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      icon: Padding(
        padding: const EdgeInsets.only(right: 6),
        child: icon,
      ),
      label: Text(text),
    );
  }
}
