import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:yuno/api/project/models/i_base_response_i_project_read.dart';
import 'package:yuno/api/project/models/i_get_response_base_i_project_with_users.dart';
import 'package:yuno/api/project/models/i_get_response_base_i_project_with_users_tasks.dart';
import 'package:yuno/api/project/models/i_get_response_paginated_i_project_with_users.dart';
import 'package:yuno/api/project/models/i_project_create.dart';
import 'package:yuno/api/project/models/i_project_update.dart';
import 'package:yuno/api/task/models/i_get_response_paginated_i_task_read.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class ProjectClient {
  factory ProjectClient(Dio dio, {String baseUrl}) = _ProjectClient;

  @GET('/project/my')
  Future<IGetResponsePaginatedIProjectWithUsers> getProjectMy({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @GET('/project/list')
  Future<IGetResponsePaginatedIProjectWithUsers> getProjectList({
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });

  @POST('/project')
  Future<IBaseResponseIProjectRead> postProject({
    @Body() required IProjectCreate body,
  });

  @GET('/project/{project_id}')
  Future<IGetResponseBaseIProjectWithUsersTasks> getProjectProjectId({
    @Path('project_id') required String projectId,
  });

  @PUT('/project/{project_id}')
  Future<IBaseResponseIProjectRead> putProjectProjectId({
    @Path('project_id') required String projectId,
    @Body() required IProjectUpdate body,
  });

  @DELETE('/project/{project_id}')
  Future<IBaseResponseIProjectRead> deleteProjectProjectId({
    @Path('project_id') required String projectId,
  });

  @GET('/project/{project_id}/join')
  Future<IGetResponseBaseIProjectWithUsers> getProjectProjectIdJoin({
    @Path('project_id') required String projectId,
  });

  @GET('/project/{project_id}/leave')
  Future<IGetResponseBaseIProjectWithUsers> getProjectProjectIdLeave({
    @Path('project_id') required String projectId,
  });

  @GET('/project/{project_id}/tasks')
  Future<IGetResponsePaginatedITaskRead> getProjectProjectIdTasks({
    @Path('project_id') required String projectId,
    @Query('page') int? page = 1,
    @Query('size') int? size = 50,
  });
}
