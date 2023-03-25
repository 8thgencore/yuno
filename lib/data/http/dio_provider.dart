import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:yuno/data/http/authorization_interceptor.dart';
import 'package:yuno/resources/environment.dart';

class DioProvider {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Environment.baseUrl,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
      sendTimeout: const Duration(milliseconds: 5000),
      contentType: Headers.jsonContentType,
    ),
  );

  Dio createInstance() {
    if (kDebugMode) {
      _dio.interceptors.addAll([
        // CustomErrorInterceptor(),
        if (kDebugMode)
          PrettyDioLogger(
            // request: true,
            // requestHeader: false,
            requestBody: true,
            // responseHeader: false,
            // responseBody: true,
            // error: true,
          ),
      ]);
    }

    return _dio;
  }

  Dio addAuthorizationInterceptor(final AuthorizationInterceptor interceptor) {
    _dio.interceptors.add(interceptor);
    return _dio;
  }
}
