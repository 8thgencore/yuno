import 'package:dio/dio.dart';
import 'package:yuno/api/task/models/i_task_create.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/api/task/models/i_task_update.dart';
import 'package:yuno/api/task/rest_client.dart';
import 'package:yuno/data/http/error_interceptor.dart';

class ApiTaskRepository {
  ApiTaskRepository({
    required this.taskClient,
  });

  final TaskClient taskClient;

  Future<dynamic> getTasks() async {
    try {
      final response = await taskClient.getTaskList();

      return response.data.items;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> getTaskById({required String id}) async {
    try {
      final response = await taskClient.getTaskTaskId(taskId: id);

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> createTask({
    required String name,
    required bool done,
    required String deadline,
    required String projectId,
  }) async {
    try {
      final response = await taskClient.postTask(
        body: ITaskCreate(
          name: name,
          done: done,
          deadline: deadline,
          projectId: projectId,
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
    required ITaskRead task,
  }) async {
    try {
      final response = await taskClient.putTaskTaskId(
        taskId: id,
        body: ITaskUpdate(
          name: task.name,
          done: task.done,
          deadline: task.deadline,
          projectId: task.projectId,
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
      final response = await taskClient.deleteTaskTaskId(taskId: id);

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }
}
