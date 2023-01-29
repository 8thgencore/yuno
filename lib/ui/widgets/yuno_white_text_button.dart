import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class YunoWhiteTextButton extends StatelessWidget {
  const YunoWhiteTextButton({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: AppColors.white100,
      ),
      child: Text(
        text,
        style: AppTypography.b16d.copyWith(color: AppColors.primary100),
      ),
    );
  }
}
