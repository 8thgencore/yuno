import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:yuno/resources/resources.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
    fontFamily: FontFamily.poppins,
    // colorScheme: ColorScheme(
    //   brightness: Brightness.light,
    //   primary: AppColors.primary100,
    //   onPrimary: AppColors.primary100,
    //   secondary: AppColors.secondary100,
    //   onSecondary: AppColors.secondary100,
    //   error: AppColors.error100,
    //   onError: AppColors.error100,
    //   background: AppColors.white100,
    //   onBackground: AppColors.white100,
    //   surface: AppColors.screen100,
    //   onSurface: AppColors.screen100,
    // ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.transparent,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary100,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary100,
        // disabledBackgroundColor: AppColors.dark10,
        disabledBackgroundColor: const Color.fromRGBO(223, 229, 234, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        textStyle: MaterialStateTextStyle.resolveWith(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return AppTypography.b16l.copyWith(color: AppColors.grey100);
            }
            return AppTypography.b16l;
          },
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      side: MaterialStateBorderSide.resolveWith(
        (states) {
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
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: AppColors.primary100),
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

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
