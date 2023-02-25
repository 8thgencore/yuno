import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:yuno/data/http/authorization_interceptor.dart';
import 'package:yuno/resources/constants.dart';

class DioBuilder {
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
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
      sendTimeout: const Duration(milliseconds: 5000),
      contentType: Headers.jsonContentType,
    ),
  );

  Dio build() => _dio;

  DioBuilder addAuthorizationInterceptor(final AuthorizationInterceptor interceptor) {
    _dio.interceptors.add(interceptor);
    return this;
  }
}
