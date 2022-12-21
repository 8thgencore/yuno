import 'package:flutter/material.dart';
import 'package:yuno/app/di/service_locator.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = sl.get<UserRepository>().getItem();
    return Scaffold(
      backgroundColor: AppColors.screen100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(),
              AvatarWidget(),
              const SizedBox(height: 20),
              Text('Zara Larson', style: AppTypography.b22d),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: AppColors.white100,
                ),
                child: Text('zaralarson12@gmail.com', style: AppTypography.l12d),
              ),
              const Spacer(),
              const ProfileButtonWidget(
                text: 'Edit Profile',
                icon: Icons.access_alarms_outlined,
                colorIcon: AppColors.primary100,
              ),
              const SizedBox(height: 16),
              const ProfileButtonWidget(
                text: 'Change Password',
                icon: Icons.access_alarms_outlined,
                colorIcon: AppColors.secondary100,
              ),
              const SizedBox(height: 16),
              const ProfileButtonWidget(
                text: 'Projects You Are In',
                icon: Icons.access_alarms_outlined,
                colorIcon: AppColors.primary100,
              ),
              const SizedBox(height: 16),
              ProfileButtonWidget(
                text: 'Logout',
                icon: Icons.access_alarms_outlined,
                colorIcon: AppColors.secondary100,
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesPage.login,
                  (route) => false,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

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
    required this.colorIcon,
    required this.text,
    this.onPressed,
  });

  final IconData icon;
  final Color colorIcon;
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
        child: Icon(icon, size: 28, color: colorIcon),
      ),
      label: Text(text),
    );
  }
}
