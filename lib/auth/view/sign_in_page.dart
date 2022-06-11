import 'package:flutter/material.dart';
import 'package:yuno/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/auth/widgets/custom_text_field.dart';
import 'package:yuno/utils/colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Expanded(child: TopInfoWidget()),
            BottomWidget(),
          ],
        ),
      ),
    );
  }
}

class TopInfoWidget extends StatelessWidget {
  const TopInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Welcome Back!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12),
          Center(
            child: Text(
              'Login to your account by entering your email\n'
              'and password below, we are really happy\n'
              'to see you come back!',
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: primaryColor,
      child: Container(
        padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          color: backgroundColor,
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
                  const Text("Doesn't have an account yet?"),
                  TextButton(
                    child: const Text('Sign Up'),
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context, '/sign_up', (route) => false),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
