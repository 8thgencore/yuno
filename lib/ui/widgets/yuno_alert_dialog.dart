import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class YunoAlertDialog extends StatelessWidget {
  const YunoAlertDialog({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(text, style: AppTypography.b16d),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Yes'),
        ),
      ],
    );
  }
}
