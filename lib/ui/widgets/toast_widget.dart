import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

enum ToastType { success, info, warning, failure }

extension ToastTypeBackgroundColor on ToastType {
  Color get bgColor {
    switch (this) {
      case ToastType.success:
        return AppColors.primary80;
      case ToastType.info:
        return AppColors.primary80;
      case ToastType.warning:
        return AppColors.secondary80;
      case ToastType.failure:
        return AppColors.error80;
    }
  }
}

extension ToastTypeTextColor on ToastType {
  Color get textColor {
    switch (this) {
      case ToastType.success:
        return AppColors.white100;
      case ToastType.info:
        return AppColors.white100;
      case ToastType.warning:
        return AppColors.dark100;
      case ToastType.failure:
        return AppColors.white100;
    }
  }
}

extension ToastTypeIcon on ToastType {
  IconData get icon {
    switch (this) {
      case ToastType.success:
        return Icons.check;
      case ToastType.info:
        return Icons.info_outline;
      case ToastType.warning:
        return Icons.priority_high;
      case ToastType.failure:
        return Icons.close;
    }
  }
}

class ToastWidget extends StatelessWidget {
  const ToastWidget({
    required this.text,
    required this.type,
    super.key,
  });

  final String text;
  final ToastType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: type.bgColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(type.icon, color: type.textColor),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: type.textColor),
            ),
          ),
        ],
      ),
    );
  }
}
