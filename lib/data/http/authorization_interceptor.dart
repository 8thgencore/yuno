import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yuno/data/repository/token_data_repository.dart';
import 'package:yuno/domain/logout_interactor.dart';

class AuthorizationInterceptor extends Interceptor {
  AuthorizationInterceptor({
    required this.tokenDataRepository,
    required this.logoutInteractor,
  });

  final TokenDataRepository tokenDataRepository;
  final LogoutInteractor logoutInteractor;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await tokenDataRepository.getItem();
    if (token == null) {
      await logoutInteractor.logout();
      return handler.next(options);
    }
    options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    return handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      await logoutInteractor.logout();
    }
    return handler.next(err);
  }
}
