import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yuno/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/auth/widgets/custom_text_field.dart';
import 'package:yuno/utils/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            ColoredBox(
              color: primaryColor,
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  height: max(200, deviceHeight / 3),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Hey, Welcome!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 12),
                    Center(
                      child: Text(
                        'Welcome to Yuno! Enter all the details\n'
                        'below to continue enjoying all Yuno\n'
                        'amazing features.',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Expanded(child: SizedBox()),
            ColoredBox(
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
                          const Text('Already have an account?'),
                          TextButton(
                            child: const Text('Login'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
