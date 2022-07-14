import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';
import 'package:yuno/ui/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/ui/auth/widgets/custom_text_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, elevation: 0),
      backgroundColor: AppColors.primary100,
      body: SafeArea(
        child: Stack(
          children: [
            const _TopInfoWidget(),
            Image.asset(Assets.images.signOrnament.path),
            const Align(
              alignment: Alignment.bottomCenter,
              child: _BottomWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class _TopInfoWidget extends StatelessWidget {
  const _TopInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primary100,
      child: Column(
        children: [
          const SizedBox(height: 90),
          Text('Hey, Welcome!', style: AppTypography.b24l),
          const SizedBox(height: 12),
          Center(
            child: Text(
              'Welcome to Yuno! Enter all the details\n'
              'below to continue enjoying all Yuno\n'
              'amazing features.',
              style: AppTypography.r14l,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primary100,
      child: Container(
        padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          color: AppColors.screen100,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // CustomTextField(
            //   onTap: () {},
            //   prefixIcon: Icons.mail_outline_outlined,
            //   labelText: 'Enter your email address',
            //   obscureText: false,
            // ),
            // const SizedBox(height: 10),
            // CustomTextField(
            //   onTap: () {},
            //   prefixIcon: Icons.person_outline_outlined,
            //   labelText: 'Create your username',
            //   obscureText: false,
            // ),
            // const SizedBox(height: 10),
            // CustomTextField(
            //   onTap: () {},
            //   prefixIcon: Icons.lock_outline,
            //   labelText: 'Create your password',
            //   obscureText: true,
            // ),
            // const SizedBox(height: 10),
            // CustomTextField(
            //   onTap: () {},
            //   prefixIcon: Icons.lock_outline,
            //   labelText: 'Confirm your password',
            //   obscureText: true,
            // ),
            const SizedBox(height: 10),
            CustomRoundedButton(
              textButton: 'Sign Me Up!',
              onPressed: () {},
              textColor: AppColors.grey100,
              buttonColor: AppColors.dark10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: AppTypography.r14d,
                ),
                TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(color: AppColors.primary100),
                  ),
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/sign_in',
                    (route) => false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
