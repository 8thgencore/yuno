import 'package:yuno/api/auth/models/i_auth_change_password.dart';
import 'package:yuno/api/auth/models/i_auth_login.dart';
import 'package:yuno/api/auth/models/i_auth_register.dart';
import 'package:yuno/api/auth/models/refresh_token.dart';
import 'package:yuno/api/auth/rest_client.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/data/repository/refresh_token_data_repository.dart';
import 'package:yuno/data/repository/token_data_repository.dart';
import 'package:yuno/data/repository/user_data_repository.dart';

class ApiAuthRepository {
  ApiAuthRepository({
    required this.authClient,
    required this.authPasswordClient,
    required this.userDataRepository,
    required this.tokenDataRepository,
    required this.refreshTokenDataRepository,
  });

  final AuthClient authClient;
  final AuthPasswordClient authPasswordClient;
  final UserDataRepository userDataRepository;
  final TokenDataRepository tokenDataRepository;
  final RefreshTokenDataRepository refreshTokenDataRepository;

  Future<IUserRead> register({
    required String email,
    required String username,
    required String password,
  }) async {
    final response = await authClient.postAuthRegister(
      body: IAuthRegister(
        email: email,
        username: username,
        password: password,
      ),
    );

    final user = response.data;
    await userDataRepository.setItem(user);

    return user;
  }

  Future<IUserRead?> login({
    required String email,
    required String password,
  }) async {
    final response = await authClient.postAuthLogin(
      body: IAuthLogin(
        email: email,
        password: password,
      ),
    );

    final data = response.data;
    await userDataRepository.setItem(data.user);
    await tokenDataRepository.setItem(data.accessToken);
    await refreshTokenDataRepository.setItem(data.refreshToken);

    return data.user;
  }

  Future<String> refreshToken({required RefreshToken body}) async {
    final response = await authClient.postAuthRefreshToken(body: body);
    final data = response.data;

    await tokenDataRepository.setItem(data.accessToken);

    return data.accessToken;
  }

  Future<IUserRead?> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    final response = await authPasswordClient.postAuthChangePassword(
      body: IAuthChangePassword(
        current: currentPassword,
        newvalue: newPassword,
      ),
    );

    final data = response.data;
    await userDataRepository.setItem(data.user);
    await tokenDataRepository.setItem(data.accessToken);
    await refreshTokenDataRepository.setItem(data.refreshToken);

    return data.user;
  }
}
