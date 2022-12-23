import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

abstract class AppTypography {
  const AppTypography._();

  static TextStyle b24l = const TextStyle(
    color: AppColors.white100,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static TextStyle b22d = const TextStyle(
    color: AppColors.dark100,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static TextStyle b18d = const TextStyle(
    color: AppColors.dark100,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static TextStyle b16l = const TextStyle(
    color: AppColors.white100,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static TextStyle r16d = const TextStyle(
    color: AppColors.dark100,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle r14d = const TextStyle(
    color: AppColors.dark100,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle l14l = const TextStyle(
    color: AppColors.white100,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle l14g = const TextStyle(
    color: AppColors.grey80,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle l14d = const TextStyle(
    color: AppColors.dark100,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle l12d = const TextStyle(
    color: AppColors.dark100,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
