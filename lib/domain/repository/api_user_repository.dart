import 'package:dio/dio.dart';
import 'package:yuno/api/user/models/i_user_update.dart';
import 'package:yuno/api/user/rest_client.dart';
import 'package:yuno/data/http/error_interceptor.dart';
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
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> updateDataById({
    required String firstName,
    required String lastName,
    required String email,
    required String username,
  }) async {
    try {
      final user = await userRepository.getItem();
      if (user != null) {
        final response = await userClient.putUserUserId(
          userId: user.id,
          body: IUserUpdate(
            firstName: firstName,
            lastName: lastName,
            email: email,
            username: username,
            birthdate: user.birthdate,
            phone: user.phone,
            roleId: user.roleId,
          ),
        );

        final data = response.data;
        await userRepository.setItem(data);

        return null;
      }
      return 'Could not get user data';
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }
}

