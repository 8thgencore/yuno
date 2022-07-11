import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.onTap,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
    super.key,
  });

  final VoidCallback onTap;
  final String hintText;
  final bool obscureText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: AppTypography.r14g,
        labelText: hintText,
        labelStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(prefixIcon, color: Colors.grey),
      ),
    );
  }
}
