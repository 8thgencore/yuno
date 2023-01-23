import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/task/models/i_base_response_i_task_read.dart';
import 'package:yuno/api/task/models/i_get_response_paginated_i_task_read.dart';
import 'package:yuno/api/task/models/i_task_create.dart';
import 'package:yuno/api/task/models/i_task_update.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class TaskClient {
  factory TaskClient(Dio dio, {String baseUrl}) = _TaskClient;

  @GET('/task/list')
  Future<IGetResponsePaginatedITaskRead> getTaskList({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @POST('/task')
  Future<IBaseResponseITaskRead> postTask({
    @Body() required ITaskCreate body,
  });

  @GET('/task/{task_id}')
  Future<IBaseResponseITaskRead> getTaskTaskId({
    @Path('task_id') required String taskId,
  });

  @PUT('/task/{task_id}')
  Future<IBaseResponseITaskRead> putTaskTaskId({
    @Path('task_id') required String taskId,
    @Body() required ITaskUpdate body,
  });

  @DELETE('/task/{task_id}')
  Future<IBaseResponseITaskRead> deleteTaskTaskId({
    @Path('task_id') required String taskId,
  });
}
