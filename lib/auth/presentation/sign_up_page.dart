import 'package:flutter/material.dart';
import 'package:yuno/auth/widgets/custom_rounded_button.dart';
import 'package:yuno/auth/widgets/custom_text_field.dart';
import 'package:yuno/utils/colors.dart';
import 'package:yuno/utils/images.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  signOrnament,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
                Column(
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
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // height: MediaQuery.of(context).size.height*0.5,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
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
                    prefixIcon: Icons.person_outline_outlined,
                    hintText: 'Create your username',
                    obscureText: false,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    onTap: () {},
                    prefixIcon: Icons.lock_outline,
                    hintText: 'Create your password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    onTap: () {},
                    prefixIcon: Icons.lock_outline,
                    hintText: 'Confirm your password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  CustomRoundedButton(
                    textButton: 'Sign Me Up!',
                    onPressed: () {},
                    textColor: Colors.grey,
                    buttonColor: Colors.black.withOpacity(0.1),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
