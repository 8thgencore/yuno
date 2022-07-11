import 'package:flutter/material.dart';
import 'package:yuno/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/auth/widgets/custom_text_field.dart';
import 'package:yuno/resources/colors.dart';
import 'package:yuno/resources/resources.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, elevation: 0),
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            const _TopInfoWidget(),
            Image.asset('assets/images/sign_ornament.png'),
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
      color: AppColors.primaryColor,
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
      color: AppColors.primaryColor,
      child: Container(
        padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          color: AppColors.background,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTextField(
              onTap: () {},
              prefixIcon: Icons.mail_outline_outlined,
              hintText: 'Enter your email address',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              onTap: () {},
              prefixIcon: Icons.person_outline_outlined,
              hintText: 'Create your username',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              onTap: () {},
              prefixIcon: Icons.lock_outline,
              hintText: 'Create your password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              onTap: () {},
              prefixIcon: Icons.lock_outline,
              hintText: 'Confirm your password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            CustomRoundedButton(
              textButton: 'Sign Me Up!',
              onPressed: () {},
              textColor: Colors.grey,
              buttonColor: Colors.black.withOpacity(0.1),
            ),
            Container(
              // padding: EdgeInsets.all(8),
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: AppTypography.r14d,
                  ),
                  TextButton(
                    child: const Text('Login'),
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context, '/sign_in', (route) => false),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
