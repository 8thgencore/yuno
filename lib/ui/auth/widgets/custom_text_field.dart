import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.onTap,
    required this.labelText,
    required this.obscureText,
    required this.prefixIcon,
    required this.onChanged,
    required this.keyboardType,
    required this.textColor,
    required this.prefixIconColor,
    super.key,
  });

  final VoidCallback onTap;
  final String labelText;
  final bool obscureText;
  final IconData prefixIcon;
  final Function(String) onChanged;
  final TextInputType keyboardType;
  final Color textColor;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.white100,
      ),
      child: TextFormField(
        style: TextStyle(color: textColor),
        autocorrect: false,
        cursorColor: AppColors.primary100,
        obscureText: obscureText,
        onChanged: onChanged,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          filled: true,
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          labelText: labelText,
          labelStyle: AppTypography.r14g.copyWith(height: 1),
          prefixIcon: Icon(prefixIcon, color: prefixIconColor),
        ),
      ),
    );
  }
}
