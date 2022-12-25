import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/data/repository/refresh_token_repository.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/logout_interactor.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/routes/routes.dart';
import 'package:yuno/ui/home/profile/bloc/profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        userRepository: sl.get<UserRepository>(),
        logoutInteractor: sl.get<LogoutInteractor>(),
        apiAuthRepository: sl.get<ApiAuthRepository>(),
        refreshTokenRepository: sl.get<RefreshTokenRepository>(),
      )..add(const ProfileEvent.started()),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state == const ProfileState.logout()) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              RoutesPage.login,
              (route) => false,
            );
          }
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
            onPressed: () => Navigator.pushNamed(
              context,
              RoutesPage.profileEdit,
            ),
          ),
          const SizedBox(height: 16),
          ProfileButtonWidget(
            text: 'Change Password',
            icon: Assets.svg.lock.svg(height: 28, color: AppColors.secondary100),
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
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (user) => Column(
          children: [
            const AvatarWidget(),
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
  const AvatarWidget({super.key});

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
                border: Border.all(color: Colors.white, width: 4),
              ),
              child: ClipOval(
                child: Image.network(
                  'https://images.unsplash.com/photo-1661961111184-11317b40adb2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
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
