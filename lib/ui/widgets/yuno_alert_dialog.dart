import 'package:flutter/material.dart';
import 'package:yuno/l10n/l10n.dart';
import 'package:yuno/resources/resources.dart';

class YunoAlertDialog extends StatelessWidget {
  const YunoAlertDialog({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      content: Text(text, style: AppTypography.b16d),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(l10n.no),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(l10n.yes),
        ),
      ],
    );
  }
}
