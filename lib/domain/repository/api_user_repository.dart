import 'package:dio/dio.dart';
import 'package:yuno/api/shared_models/http_validation_error.dart';
import 'package:yuno/api/user/models/i_user_update.dart';
import 'package:yuno/api/user/rest_client.dart';
import 'package:yuno/data/repository/token_repository.dart';
import 'package:yuno/data/repository/user_repository.dart';

class ApiUserRepository {
  ApiUserRepository({
    required this.userClient,
    required this.userRepository,
    required this.tokenRepository,
  });

  final UserClient userClient;
  final UserRepository userRepository;
  final TokenRepository tokenRepository;

  Future<dynamic> getData() async {
    try {
      final response = await userClient.getUser();
      final user = response.data;

      await userRepository.setItem(user);

      return user;
    } on DioError catch (e) {
      if (e.response?.statusCode != 201) {
        return HTTPValidationError.fromJson(e.response?.data as Map<String, dynamic>).detail;
      }
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> updateDataById({
    required String id,
    required IUserUpdate body,
  }) async {
    try {
      final response = await userClient.putUserUserId(userId: id, body: body);
      final user = response.data;

      await userRepository.setItem(user);

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