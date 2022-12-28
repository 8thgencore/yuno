import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/auth/models/i_auth_login.dart';
import 'package:yuno/api/auth/models/i_auth_register.dart';
import 'package:yuno/api/auth/models/i_auth_token.dart';
import 'package:yuno/api/auth/models/i_post_response_base_token_read.dart';
import 'package:yuno/api/auth/models/token_read.dart';
import 'package:yuno/api/user/models/i_post_response_base_i_user_read.dart';
import 'models/i_auth_change_password.dart';
import 'models/i_post_response_base_token.dart';
import 'models/refresh_token.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST('/auth/login')
  Future<IPostResponseBaseToken> postAuthLogin({
    @Body() required IAuthLogin body,
  });

  @POST('/auth/register')
  Future<IPostResponseBaseIUserRead> postAuthRegister({
    @Body() required IAuthRegister body,
  });

  @POST('/auth/change-password')
  Future<IPostResponseBaseToken> postAuthChangePassword({
    @Body() required IAuthChangePassword body,
  });

  @POST('/auth/token')
  Future<TokenRead> postAuthToken({
    @Body() required IAuthToken body,
  });

  @POST('/auth/refresh-token')
  Future<IPostResponseBaseTokenRead> postAuthRefreshToken({
    @Body() required RefreshToken body,
  });
}
