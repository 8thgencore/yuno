import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

abstract class AppTypography {
  const AppTypography._();

  static TextStyle b24l = const TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle r14l = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle r14g = const TextStyle(
    color: AppColors.secondaryTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle r14d = const TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
