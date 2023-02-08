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
      _dio.interceptors.addAll([
        // CustomErrorInterceptor(),
        if (kDebugMode)
          PrettyDioLogger(
            request: true,
            requestHeader: false,
            requestBody: true,
            responseHeader: false,
            responseBody: true,
            error: true,
          ),
      ]);
    }
  }

  Dio build() => _dio;

  DioBuilder addAuthorizationInterceptor(final AuthorizationInterceptor interceptor) {
    _dio.interceptors.add(interceptor);
    return this;
  }
}
