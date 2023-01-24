import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yuno/data/repository/token_repository.dart';
import 'package:yuno/domain/logout_interactor.dart';

class AuthorizationInterceptor extends Interceptor {
  AuthorizationInterceptor({
    required this.tokenRepository,
    required this.logoutInteractor,
  });

  final TokenRepository tokenRepository;
  final LogoutInteractor logoutInteractor;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await tokenRepository.getItem();
    if (token == null) {
      logoutInteractor.logout();
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
