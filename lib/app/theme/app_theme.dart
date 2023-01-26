import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:yuno/resources/resources.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
    fontFamily: FontFamily.poppins,
    backgroundColor: AppColors.screen100,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary100,
    ),
    checkboxTheme: CheckboxThemeData(
      side: MaterialStateBorderSide.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return const BorderSide(color: AppColors.primary100);
          }
          return const BorderSide(color: AppColors.grey20);
        },
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      fillColor: MaterialStateProperty.all(AppColors.primary100),
      checkColor: MaterialStateProperty.all(AppColors.white100),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primary100,
    ),
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

  static setStatusBarAndNavigationBarColors() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.white100,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}
