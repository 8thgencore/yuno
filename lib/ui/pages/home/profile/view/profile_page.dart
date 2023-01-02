import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/api/user/models/i_image_media_read.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/app/routes/routes.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/pages/home/profile/bloc/profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl.get<ProfileBloc>()..add(const ProfileEvent.started()),
      child: BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (_, current) => current == const ProfileState.logout(),
        listener: (context, state) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesPage.login,
            (route) => false,
          );
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(),
          const _HeaderWidget(),
          const Spacer(),
          ProfileButtonWidget(
            text: 'Edit Profile',
            icon: Assets.svg.edit.svg(height: 28, color: AppColors.primary100),
            onPressed: () async {
              final isUpdate = await Navigator.pushNamed(context, RoutesPage.profileEdit);
              if (isUpdate == true) {
                context.read<ProfileBloc>().add(const ProfileEvent.update());
              }
            },
          ),
          const SizedBox(height: 16),
          ProfileButtonWidget(
            text: 'Change Password',
            icon: Assets.svg.lock.svg(height: 28, color: AppColors.secondary100),
            onPressed: () => Navigator.pushNamed(context, RoutesPage.profileChangePassword),
          ),
          const SizedBox(height: 16),
          ProfileButtonWidget(
            text: 'Projects You Are In',
            icon: Assets.svg.project.svg(height: 28, color: AppColors.primary100),
          ),
          const SizedBox(height: 16),
          ProfileButtonWidget(
            text: 'Logout',
            icon: Assets.svg.logout.svg(height: 28, color: AppColors.secondary100),
            onPressed: () => context.read<ProfileBloc>().add(const ProfileEvent.logout()),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) => state.maybeWhen(
        loading: () => const SizedBox(
          height: 255,
          child: Center(child: CircularProgressIndicator()),
        ),
        loaded: (user) => Column(
          children: [
            AvatarWidget(image: user.image),
            const SizedBox(height: 20),
            if (user.firstName == '' && user.lastName == '')
              Text(user.username, style: AppTypography.b22d)
            else
              Text('${user.firstName} ${user.lastName}', style: AppTypography.b22d),
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
      padding: const EdgeInsets.all(2.0),
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
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white100,
                border: Border.all(color: AppColors.white100, width: 4),
              ),
              child: ClipOval(
                child: Stack(
                  children: [
                    buildImage(image: image),
                    Positioned(
                      left: 44,
                      bottom: 8,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.white60,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Assets.svg.pencil.svg(),
                        ),
                      ),
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
        height: 128,
        width: 128,
        fit: BoxFit.fill,
      );
    } else {
      return Assets.images.avatar.image(height: 120, fit: BoxFit.cover);
    }
  }
}

class ProfileButtonWidget extends StatelessWidget {
  const ProfileButtonWidget({
    super.key,
    required this.icon,
    required this.text,
    this.onPressed,
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
        padding: const EdgeInsets.only(right: 6.0),
        child: icon,
      ),
      label: Text(text),
    );
  }
}
