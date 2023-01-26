import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/role/models/i_role_create.dart';
import 'package:yuno/api/role/models/i_role_read.dart';
import 'package:yuno/api/role/models/i_role_update.dart';
import 'package:yuno/api/shared_models/base_response.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class Client {
  factory Client(Dio dio, {required String baseUrl}) = _Client;

  @POST('/api/v1/role')
  Future<BaseResponse<IRoleRead>> postApiV1Role({
    @Body() required IRoleCreate body,
  });

  @GET('/api/v1/role/list')
  Future<BaseResponse<IRoleRead>> getApiV1RoleList({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @GET('/api/v1/role/{role_id}')
  Future<BaseResponse<IRoleRead>> getApiV1RoleRoleId({
    @Path('role_id') required String roleId,
  });

  @PUT('/api/v1/role/{role_id}')
  Future<BaseResponse<IRoleRead>> putApiV1RoleRoleId({
    @Path('role_id') required String roleId,
    @Body() required IRoleUpdate body,
  });
}
