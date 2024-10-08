import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:yuno/resources/resources.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
    fontFamily: FontFamily.poppins,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(64)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary100,
        // disabledBackgroundColor: AppColors.dark10,
        disabledBackgroundColor: const Color.fromRGBO(223, 229, 234, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        textStyle: WidgetStateTextStyle.resolveWith(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return AppTypography.b16l.copyWith(color: AppColors.grey100);
            }
            return AppTypography.b16l;
          },
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      side: WidgetStateBorderSide.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return const BorderSide(color: AppColors.primary100);
          }
          return const BorderSide(color: AppColors.grey20);
        },
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      fillColor: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primary100;
          }
          return AppColors.white100;
        },
      ),
      checkColor: WidgetStateProperty.all(AppColors.white100),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: AppColors.primary100),
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.platformDispatcher.platformBrightness;

  static void setStatusBarAndNavigationBarColors() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.white100,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }
}
