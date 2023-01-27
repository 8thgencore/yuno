import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.labelText,
    required this.textColor,
    this.errorText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.onChanged,
    this.onSubmitted,
    this.onPressedFunction,
    this.controller,
    this.focusNode,
    super.key,
  });

  final String labelText;
  final Color textColor;
  final bool readOnly;
  final String? errorText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool? enabled;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final void Function()? onPressedFunction;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.white100,
          ),
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            enabled: enabled,
            readOnly: readOnly,
            style: AppTypography.r14d.copyWith(color: textColor),
            autocorrect: false,
            cursorColor: AppColors.primary100,
            obscureText: obscureText!,
            onTap: onPressedFunction,
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20.0, 12, 20, 12),
              fillColor: Colors.transparent,
              filled: true,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(30),
              //   color: AppColors.white100,
              // ),
              border: InputBorder.none,
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              labelText: labelText,
              labelStyle: AppTypography.l14g.copyWith(height: 1),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              // errorText: errorText,
            ),
          ),
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Row(
              children: [
                ClipOval(
                  child: Container(width: 4, height: 4, color: AppColors.error100),
                ),
                const SizedBox(width: 8),
                Text(
                  errorText?.toString() ?? '',
                  style: AppTypography.l12d.copyWith(color: AppColors.dark80, fontSize: 11),
                ),
              ],
            ),
          )
        else
          const SizedBox.shrink(),
      ],
    );
  }
}
