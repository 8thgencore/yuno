import 'package:flutter/material.dart';
import 'package:yuno/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/auth/widgets/custom_text_field.dart';
import 'package:yuno/resources/colors.dart';
import 'package:yuno/resources/resources.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0, elevation: 0),
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            const _TopInfoWidget(),
            Image.asset('assets/images/sign_ornament.png', fit: BoxFit.cover),
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
          Text('Welcome Back!', style: AppTypography.b24l),
          const SizedBox(height: 12),
          Center(
            child: Text(
              'Login to your account by entering your email\n'
              'and password below, we are really happy\n'
              'to see you come back!',
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 116,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            color: AppColors.primaryTextColor,
          ),
        ),
        ColoredBox(
          color: AppColors.primaryTextColor,
          child: Container(
            padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              color: AppColors.background,
            ),
            child: Column(
              children: [
                CustomTextField(
                  onTap: () {},
                  prefixIcon: Icons.mail_outline_outlined,
                  hintText: 'Enter your email address',
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  onTap: () {},
                  prefixIcon: Icons.lock_outline,
                  hintText: 'Confirm your password',
                  obscureText: true,
                ),
                TextButton(
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, '/splash', (route) => false),
                ),
                CustomRoundedButton(
                  textButton: 'Login',
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
                        "Doesn't have an account yet?",
                        style: AppTypography.r14d,
                      ),
                      TextButton(
                        child: const Text('Sign Up'),
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                            context, '/sign_up', (route) => false),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
