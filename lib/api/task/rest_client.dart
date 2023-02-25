import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/shared_models/models.dart';
import 'package:yuno/api/task/models.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class TaskClient {
  factory TaskClient(Dio dio, {String baseUrl}) = _TaskClient;

  @GET('/task/list')
  Future<BaseResponse<PaginatedDataITaskWithProjectName>> getTaskList({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @GET('/task/not_done')
  Future<BaseResponse<PaginatedDataITaskWithProjectName>> getNotDoneTaskList({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @GET('/task/by_deadline')
  Future<BaseResponse<PaginatedDataITaskWithProjectName>> getTaskByDeadline({
    @Query('date') required String date,
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @POST('/task')
  Future<BaseResponse<ITaskRead>> postTask({
    @Body() required ITaskCreate body,
  });

  @GET('/task/{task_id}')
  Future<BaseResponse<ITaskRead>> getTaskTaskId({
    @Path('task_id') required String taskId,
  });

  @PUT('/task/{task_id}')
  Future<BaseResponse<ITaskRead>> putTaskTaskId({
    @Path('task_id') required String taskId,
    @Body() required ITaskUpdate body,
  });

  @DELETE('/task/{task_id}')
  Future<BaseResponse<ITaskRead>> deleteTaskTaskId({
    @Path('task_id') required String taskId,
  });
}
