import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      alignment: Alignment.center,
      width: double.infinity,
      child: Text(
        'Tasks list is empty',
        style: AppTypography.l14g,
      ),
    );
  }
}
