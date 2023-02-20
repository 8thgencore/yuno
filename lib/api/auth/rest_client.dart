import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/auth/models.dart';
import 'package:yuno/api/shared_models/models.dart';
import 'package:yuno/api/user/models.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST('/auth/login')
  Future<BaseResponse<Token>> postAuthLogin({
    @Body() required IAuthLogin body,
  });

  @POST('/auth/register')
  Future<BaseResponse<IUserRead>> postAuthRegister({
    @Body() required IAuthRegister body,
  });

  @POST('/auth/change-password')
  Future<BaseResponse<Token>> postAuthChangePassword({
    @Body() required IAuthChangePassword body,
  });

  @POST('/auth/token')
  Future<TokenRead> postAuthToken({
    @Body() required IAuthToken body,
  });

  @POST('/auth/refresh-token')
  Future<BaseResponse<TokenRead>> postAuthRefreshToken({
    @Body() required RefreshToken body,
  });

  @POST('/auth/forget-password')
  Future<void> postAuthForgetPassword({
    @Body() required IAuthForgetPassword body,
  });

  @POST('/auth/otp')
  Future<void> postAuthOtp({
    @Body() required IAuthOtpCode body,
  });

  @POST('/auth/reset-password')
  Future<BaseResponse<IUserRead>> postAuthResetPassword({
    @Body() required IAuthResetPassword body,
  });
}

@RestApi()
abstract class AuthPasswordClient {
  factory AuthPasswordClient(Dio dio, {String baseUrl}) = _AuthPasswordClient;

  @POST('/auth/change-password')
  Future<BaseResponse<Token>> postAuthChangePassword({
    @Body() required IAuthChangePassword body,
  });
}
