import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class YunoIconButton extends StatelessWidget {
  const YunoIconButton({
    required this.icon,
    super.key,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: AppColors.white100,
      ),
      child: icon,
    );
  }
}
