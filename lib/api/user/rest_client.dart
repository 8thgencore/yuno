import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/role/models/i_get_response_paginated_i_role_read.dart';
import 'package:yuno/api/user/models/i_delete_response_base_i_user_read.dart';
import 'package:yuno/api/user/models/i_get_response_base_i_user_read.dart';
import 'package:yuno/api/user/models/i_put_response_base_i_user_read.dart';
import 'package:yuno/api/user/models/i_user_update.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class Client {
  factory Client(Dio dio, {required String baseUrl}) = _Client;

  @GET('/api/v1/user')
  Future<IGetResponseBaseIUserRead> getUser();

  @POST('/api/v1/user')
  Future<void> postUser({
    @Body() required Null body,
  });

  @GET('/api/v1/user/list')
  Future<IGetResponsePaginatedIRoleRead> getUserList({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @GET('/api/v1/user/list/by_created_at')
  Future<IGetResponsePaginatedIRoleRead> getUserListByCreatedAt({
    @Query('order') OrderType? order = OrderType.asc,
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @GET('/api/v1/user/{user_id}')
  Future<IGetResponseBaseIUserRead> getUserUserId({
    @Path('user_id') required String userId,
  });

  @PUT('/api/v1/user/{user_id}')
  Future<IPutResponseBaseIUserRead> putUserUserId({
    @Path('user_id') required String userId,
    @Body() required IUserUpdate body,
  });

  @DELETE('/api/v1/user/{user_id}')
  Future<IDeleteResponseBaseIUserRead> deleteUserUserId({
    @Path('user_id') required String userId,
  });
}

enum OrderType{
  @JsonValue('asc')
  asc('asc'),
  @JsonValue('desc')
  desc('desc');

  const OrderType(this.type);

  final String type;
}