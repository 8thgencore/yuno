import 'package:dio/dio.dart';
import 'package:yuno/api/shared_models/http_validation_error.dart';

export 'package:dio/dio.dart';

class CustomErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    // await l.error(err, err.stackTrace);
    // await FirebaseCrashlytics.instance.recordError(err, err.stackTrace);
  }
}

dynamic dioErrorInterceptor(DioError e) {
  if (e.response?.statusCode != 200) {
    if (e.response?.data is Map<String, dynamic>) {
      final error = HTTPValidationError.fromJson(e.response?.data as Map<String, dynamic>).detail;
      return error;
    } else {
      return 'Unknown network error';
    }
  }
}
