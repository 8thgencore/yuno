import 'package:yuno/api/auth/models.dart';
import 'package:yuno/api/auth/rest_client.dart';
import 'package:yuno/api/user/models.dart';
import 'package:yuno/data/repository/refresh_token_data_repository.dart';
import 'package:yuno/data/repository/reset_email_data_repository.dart';
import 'package:yuno/data/repository/reset_token_data_repository.dart';
import 'package:yuno/data/repository/token_data_repository.dart';
import 'package:yuno/data/repository/user_data_repository.dart';

abstract class IAuthRepository {
  Future<IUserRead> register({
    required String email,
    required String username,
    required String password,
  });

  Future<IUserRead?> login({
    required String email,
    required String password,
  });

  Future<String> refreshToken({required RefreshToken body});

  Future<IUserRead?> changePassword({
    required String currentPassword,
    required String newPassword,
  });

  Future<bool> forgotPassword({required String email});

  Future<String> sendOtp({required String otp});

  Future<IUserRead> resetPassword({required String password});
}

class ApiAuthRepository implements IAuthRepository {
  ApiAuthRepository({
    required this.authClient,
    required this.authPasswordClient,
    required this.userDataRepository,
    required this.tokenDataRepository,
    required this.refreshTokenDataRepository,
    required this.resetEmailDataRepository,
    required this.resetTokenDataRepository,
  });

  final AuthClient authClient;
  final AuthPasswordClient authPasswordClient;
  final UserDataRepository userDataRepository;
  final TokenDataRepository tokenDataRepository;
  final RefreshTokenDataRepository refreshTokenDataRepository;
  final ResetEmailDataRepository resetEmailDataRepository;
  final ResetTokenDataRepository resetTokenDataRepository;

  @override
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

  @override
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

  @override
  Future<String> refreshToken({required RefreshToken body}) async {
    final response = await authClient.postAuthRefreshToken(body: body);
    final data = response.data;

    await tokenDataRepository.setItem(data.accessToken);

    return data.accessToken;
  }

  @override
  Future<IUserRead?> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    final response = await authPasswordClient.postAuthChangePassword(
      body: IAuthChangePassword(
        currentPassword: currentPassword,
        newPassword: newPassword,
      ),
    );

    final data = response.data;
    await userDataRepository.setItem(data.user);
    await tokenDataRepository.setItem(data.accessToken);
    await refreshTokenDataRepository.setItem(data.refreshToken);

    return data.user;
  }

  @override
  Future<bool> forgotPassword({required String email}) async {
    await authClient.postAuthForgotPassword(
      body: IAuthForgotPassword(email: email),
    );
    await resetEmailDataRepository.setItem(email);

    return true;
  }

  @override
  Future<String> sendOtp({required String otp}) async {
    final email = await resetEmailDataRepository.getItem() ?? '';

    final response = await authClient.postAuthOtp(body: IAuthOtpCode(email: email, otp: otp));
    final resetToken = response.data.resetToken;

    await resetTokenDataRepository.setItem(resetToken);

    return resetToken;
  }

  @override
  Future<IUserRead> resetPassword({required String password}) async {
    final resetToken = await resetTokenDataRepository.getItem() ?? '';

    final response = await authClient.postAuthResetPassword(
      body: IAuthResetPassword(
        resetToken: resetToken,
        password: password,
      ),
    );

    return response.data;
  }
}
