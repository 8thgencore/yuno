import 'package:dio/dio.dart';
import 'package:yuno/api/project/models/i_project_create.dart';
import 'package:yuno/api/project/models/i_project_update.dart';
import 'package:yuno/api/project/rest_client.dart';
import 'package:yuno/data/http/error_interceptor.dart';

class ApiProjectRepository {
  ApiProjectRepository({
    required this.projectClient,
  });

  final ProjectClient projectClient;

  Future<dynamic> getMyProjects() async {
    try {
      final response = await projectClient.getProjectMy();

      return response.data.items;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> getProjects({required int size}) async {
    try {
      final response = await projectClient.getProjectList(size: size);

      return response.data.items;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> getProjectById({required String id}) async {
    try {
      final response = await projectClient.getProjectProjectId(projectId: id);

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> createProject({
    required String name,
    required String description,
  }) async {
    try {
      final response = await projectClient.postProject(
        body: IProject(
          name: name,
          description: description,
          link: '',
        ),
      );

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> updateTaskById({
    required String id,
    required String name,
    required String description,
  }) async {
    try {
      final response = await projectClient.putProjectProjectId(
        projectId: id,
        body: IProjectUpdate(
          name: name,
          description: description,
        ),
      );

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> deleteTaskById({required String id}) async {
    try {
      final response = await projectClient.deleteProjectProjectId(projectId: id);

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }
}
