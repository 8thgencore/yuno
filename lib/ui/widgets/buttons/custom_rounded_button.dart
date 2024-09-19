import 'package:flutter/material.dart';
import 'package:yuno/resources/colors.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    required this.textButton,
    this.backgroundColor,
    this.onPressed,
    super.key,
  });

  final String textButton;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor ?? AppColors.primary100),
        child: Text(
          textButton,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.white100,
          ),
        ),
      ),
    );
  }
}
