import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/widgets.dart';
import 'package:yuno/app/logger.dart';
import 'package:yuno/app/theme/app_theme.dart';
import 'package:yuno/resources/environment.dart';

import 'app/di/service_locator.dart';
import 'firebase_options.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    l.info('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    l.info('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // Init logger
      initLogger();

      // This method sets the colors and brightness of the status bar and navigation bar
      AppTheme.setStatusBarAndNavigationBarColors();

      // Set the Bloc observer to an instance of AppBlocObserver
      Bloc.observer = AppBlocObserver();

      // Initialize Firebase with the default options for the current platform
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

      // Load environment variables
      await Environment.init();

      // Init Service Locator
      initServiceLocator();

      // Error
      FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
      FlutterError.onError = (details) => l.error(details.exceptionAsString(), details.stack);

      runApp(await builder());
    },
    (error, stackTrace) => l.error(error.toString(), stackTrace),
  );
}
