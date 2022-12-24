import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.labelText,
    required this.keyboardType,
    required this.textColor,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
    this.onTap,
    super.key,
  });

  final String labelText;
  final TextInputType keyboardType;
  final Color textColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Function(String)? onChanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.white100,
      ),
      child: TextFormField(
        style: AppTypography.r14d.copyWith(color: textColor),
        autocorrect: false,
        cursorColor: AppColors.primary100,
        obscureText: obscureText!,
        onChanged: onChanged,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10, 20, 10),
          fillColor: Colors.transparent,
          filled: true,
          border: const UnderlineInputBorder(borderSide: BorderSide.none),
          labelText: labelText,
          labelStyle: AppTypography.l14g.copyWith(height: 1),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
