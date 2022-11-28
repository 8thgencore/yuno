import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

abstract class AppTypography {
  const AppTypography._();

  static TextStyle b24l = const TextStyle(
    color: AppColors.white100,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle b16l = const TextStyle(
    color: AppColors.white100,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle r14l = const TextStyle(
    color: AppColors.white100,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle r14g = const TextStyle(
    color: AppColors.grey80,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle r14d = const TextStyle(
    color: AppColors.dark100,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
