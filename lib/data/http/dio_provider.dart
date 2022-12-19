import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:yuno/data/http/authorization_interceptor.dart';
import 'package:yuno/resources/constants.dart';

class DioBuilder {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 5000,
      sendTimeout: 5000,
    ),
  );

  DioBuilder() {
    if (kDebugMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
        ),
      );
    }
  }

  Dio build() => _dio;

  DioBuilder addAuthorizationInterceptor(final AuthorizationInterceptor interceptor) {
    _dio.interceptors.add(interceptor);
    return this;
  }
}