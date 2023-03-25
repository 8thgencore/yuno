import 'package:dio/dio.dart';
import 'package:yuno/api/shared_models/http_validation_error.dart';
import 'package:yuno/app/logger.dart';

export 'package:dio/dio.dart';

class CustomErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    // await l.error(err, err.stackTrace);
    // await FirebaseCrashlytics.instance.recordError(err, err.stackTrace);
  }
}

dynamic dioErrorInterceptor(DioError e) {
  // ignore: discarded_futures
  l.error(e, e.stackTrace);

  if (e.response?.statusCode != 200) {
    if (e.response?.data is Map<String, dynamic>) {
      final error = HTTPValidationError.fromJson(e.response?.data as Map<String, dynamic>).detail;
      if (error.runtimeType == String) {
        return error;
      }
    }
    return 'Unknown network error';
  }
}
