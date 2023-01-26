import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/project/models/i_project_create.dart';
import 'package:yuno/api/project/models/i_project_read.dart';
import 'package:yuno/api/project/models/i_project_update.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/api/project/models/i_project_with_users_tasks.dart';
import 'package:yuno/api/project/models/paginated_data_i_project_with_users.dart';
import 'package:yuno/api/shared_models/base_response.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class ProjectClient {
  factory ProjectClient(Dio dio, {String baseUrl}) = _ProjectClient;

  @GET('/project/my')
  Future<BaseResponse<PaginatedDataIProjectWithUsers>> getProjectMy({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @GET('/project/list')
  Future<BaseResponse<PaginatedDataIProjectWithUsers>> getProjectList({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @POST('/project')
  Future<BaseResponse<IProjectRead>> postProject({
    @Body() required IProject body,
  });

  @GET('/project/{project_id}')
  Future<BaseResponse<IProjectWithUsersTasks>> getProjectProjectId({
    @Path('project_id') required String projectId,
  });

  @PUT('/project/{project_id}')
  Future<BaseResponse<IProjectRead>> putProjectProjectId({
    @Path('project_id') required String projectId,
    @Body() required IProjectUpdate body,
  });

  @DELETE('/project/{project_id}')
  Future<BaseResponse<IProjectRead>> deleteProjectProjectId({
    @Path('project_id') required String projectId,
  });

  @GET('/project/{project_id}/join')
  Future<BaseResponse<IProjectWithUsers>> getProjectProjectIdJoin({
    @Path('project_id') required String projectId,
  });

  @GET('/project/{project_id}/leave')
  Future<BaseResponse<IProjectWithUsers>> getProjectProjectIdLeave({
    @Path('project_id') required String projectId,
  });

  @GET('/project/{project_id}/tasks')
  Future<BaseResponse<IProjectRead>> getProjectProjectIdTasks({
    @Path('project_id') required String projectId,
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });
}
