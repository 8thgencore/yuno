import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class YunoWhiteTextButton extends StatelessWidget {
  const YunoWhiteTextButton({
    required this.text,
    this.onPressed,
    super.key,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: AppColors.white100,
        ),
        child: Center(
          child: Text(
            text,
            style: AppTypography.b16d.copyWith(color: AppColors.primary100),
          ),
        ),
      ),
    );
  }
}
