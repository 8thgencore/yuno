import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    required this.textButton,
    required this.textColor,
    required this.buttonColor,
    this.disabledBackgroundColor,
    this.onPressed,
    super.key,
  });

  final String textButton;
  final Color textColor;
  final Color buttonColor;
  final Color? disabledBackgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: buttonColor,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: buttonColor,
          disabledBackgroundColor:  disabledBackgroundColor,
          textStyle: AppTypography.b16l.copyWith(color: textColor),
        ),
        child: Text(textButton),
      ),
    );
  }
}
