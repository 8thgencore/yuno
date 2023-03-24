import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

const _enableLogger = kDebugMode;

final logger = Logger('');

void initLogger() {
  Logger.root.level = _enableLogger ? Level.ALL : Level.OFF;
  final format = DateFormat('HH:mm:ss');
  if (_enableLogger) {
    logger.onRecord.listen(
      (event) {
        debugPrint('${format.format(event.time)} | [${event.level.name}]: ${event.message}');
        final error = event.error;
        final stacktrace = event.stackTrace;
        if (error != null) {
          debugPrint(error.toString());
        }
        if (stacktrace != null) {
          debugPrint(error.toString());
        }
      },
    );
  }
}

final l = AppLogger();

class AppLogger {
  void info(String message) {
    logger.info(message);
  }

  Future<void> warn(String message) async {
    logger.warning(message);
    await FirebaseCrashlytics.instance.log(message);
  }

  Future<void> error(Object exception, [StackTrace? stack]) async {
    stack ??= StackTrace.current;
    logger.shout(exception.toString(), stack);
    await FirebaseCrashlytics.instance.recordError(exception, stack);
  }
}
