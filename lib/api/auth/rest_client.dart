import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/auth/models/i_auth_change_password.dart';
import 'package:yuno/api/auth/models/i_auth_login.dart';
import 'package:yuno/api/auth/models/i_auth_register.dart';
import 'package:yuno/api/auth/models/i_auth_token.dart';
import 'package:yuno/api/auth/models/refresh_token.dart';
import 'package:yuno/api/auth/models/token.dart';
import 'package:yuno/api/auth/models/token_read.dart';
import 'package:yuno/api/shared_models/base_response.dart';
import 'package:yuno/api/user/models/i_user_read.dart';

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
}

@RestApi()
abstract class AuthPasswordClient {
  factory AuthPasswordClient(Dio dio, {String baseUrl}) = _AuthPasswordClient;

  @POST('/auth/change-password')
  Future<BaseResponse<Token>> postAuthChangePassword({
    @Body() required IAuthChangePassword body,
  });
}
