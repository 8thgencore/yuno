import 'package:dio/dio.dart';
import 'package:yuno/api/shared_models/http_validation_error.dart';

class CustomErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    // await l.error(err, err.stackTrace);
    // await FirebaseCrashlytics.instance.recordError(err, err.stackTrace);
  }
}

dynamic dioErrorInterceptor(DioError e) {
  if (e.response?.statusCode != 200) {
    print("ERROR: ${e}");
    if (e.response?.data is Map<String, dynamic>) {
      return HTTPValidationError.fromJson(e.response?.data as Map<String, dynamic>).detail;
    } else {
      return e.error;
    }
  }
}
