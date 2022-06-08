import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuno/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final VoidCallback onTap;
  final String hintText;
  final bool obscureText;
  final IconData prefixIcon;

  const CustomTextField({
    Key? key,
    required this.onTap,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: primaryColor,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        labelText: hintText,
        labelStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(prefixIcon, color: Colors.grey),
      ),
    );
  }
}
