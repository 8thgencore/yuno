import 'package:dio/dio.dart';
import 'package:yuno/api/auth/models/i_auth_login.dart';
import 'package:yuno/api/auth/models/i_auth_register.dart';
import 'package:yuno/api/auth/models/refresh_token.dart';
import 'package:yuno/api/auth/rest_client.dart';
import 'package:yuno/api/shared_models/http_validation_error.dart';
import 'package:yuno/data/repository/refresh_token_repository.dart';
import 'package:yuno/data/repository/token_repository.dart';
import 'package:yuno/data/repository/user_repository.dart';

class ApiAuthRepository {
  ApiAuthRepository({
    required this.authClient,
    required this.userRepository,
    required this.tokenRepository,
    required this.refreshTokenRepository,
  });

  final AuthClient authClient;
  final UserRepository userRepository;
  final TokenRepository tokenRepository;
  final RefreshTokenRepository refreshTokenRepository;

  Future<dynamic> register({required IAuthRegister body}) async {
    try {
      final response = await authClient.postAuthRegister(body: body);

      final user = response.data;
      await userRepository.setItem(user);
      return null;
    } on DioError catch (e) {
      if (e.response?.statusCode != 201) {
        return HTTPValidationError.fromJson(e.response?.data as Map<String, dynamic>).detail;
      }
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> login({required IAuthLogin body}) async {
    try {
      final response = await authClient.postAuthLogin(body: body);
      final data = response.data;

      await userRepository.setItem(data.user);
      await tokenRepository.setItem(data.accessToken);
      await refreshTokenRepository.setItem(data.refreshToken);

      return null;
    } on DioError catch (e) {
      if (e.response?.statusCode != 200) {
        return HTTPValidationError.fromJson(e.response?.data as Map<String, dynamic>).detail;
      }
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> refreshToken({required RefreshToken body}) async {
    try {
      final response = await authClient.postAuthRefreshToken(body: body);
      final data = response.data;

      await tokenRepository.setItem(data.accessToken);

      return null;
    } on DioError catch (e) {
      if (e.response?.statusCode != 200) {
        return HTTPValidationError.fromJson(e.response?.data as Map<String, dynamic>).detail;
      }
    } on Object {
      return 'Something error';
    }
  }
}
