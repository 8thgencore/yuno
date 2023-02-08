import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/role/models/i_role_read.dart';
import 'package:yuno/api/shared_models/base_response.dart';
import 'package:yuno/api/shared_models/i_order_enum.dart';
import 'package:yuno/api/user/models/i_image_upload.dart';
import 'package:yuno/api/user/models/i_user_create.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/api/user/models/i_user_update.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET('/user')
  Future<BaseResponse<IUserRead>> getUser();

  @POST('/user')
  Future<IUserRead> postUser({
    @Body() required IUserCreate body,
  });

  @GET('/user/list')
  Future<BaseResponse<IRoleRead>> getUserList({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @GET('/user/list/by_created_at')
  Future<BaseResponse<IRoleRead>> getUserListByCreatedAt({
    @Query('order') IOrderEnum? order = IOrderEnum.asc,
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @GET('/user/{user_id}')
  Future<BaseResponse<IUserRead>> getUserUserId({
    @Path('user_id') required String userId,
  });

  @PUT('/user/{user_id}')
  Future<BaseResponse<IUserRead>> putUserUserId({
    @Path('user_id') required String userId,
    @Body() required IUserUpdate body,
  });

  @DELETE('/user/{user_id}')
  Future<BaseResponse<IUserRead>> deleteUserUserId({
    @Path('user_id') required String userId,
  });

  @MultiPart()
  @POST('/user/image')
  Future<BaseResponse<IUserRead>> postUserImage({
    @Part() required IImageUpload file,
    @Part(name: 'image_file') required File imageFile,
  });

  @MultiPart()
  @POST('/user/{user_id}/image')
  Future<void> postUserIdImage({
    @Path('user_id') required String userId,
    @Part() required IImageUpload body,
    @Part() required File file,
  });
}
