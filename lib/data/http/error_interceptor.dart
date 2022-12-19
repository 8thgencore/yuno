import 'package:dio/dio.dart';

class CustomErrorInterceptor extends Interceptor {
  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    // await l.error(err, err.stackTrace);
    // await FirebaseCrashlytics.instance.recordError(err, err.stackTrace);
  }
}
