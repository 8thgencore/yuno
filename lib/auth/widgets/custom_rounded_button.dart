import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  final String textButton;
  final Color textColor;
  final Color buttonColor;
  final Function onPressed;

  const CustomRoundedButton({
    Key? key,
    required this.textButton,
    required this.textColor,
    required this.buttonColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: buttonColor,
      ),
      child: TextButton(
        onPressed: () => onPressed(),
        child: Text(
          textButton,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
