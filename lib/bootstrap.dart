import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:yuno/app/theme/app_theme.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // This method sets the colors and brightness of the status bar and navigation bar
  AppTheme.setStatusBarAndNavigationBarColors();

  // Set the Bloc observer to an instance of AppBlocObserver
  Bloc.observer = AppBlocObserver();

  // Initialize Firebase with the default options for the current platform
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Error
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  FlutterError.onError = (details) => log(details.exceptionAsString(), stackTrace: details.stack);

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
