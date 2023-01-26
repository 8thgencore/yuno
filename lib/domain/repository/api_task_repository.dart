import 'package:dio/dio.dart';
import 'package:yuno/api/task/models/i_task_create.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/api/task/models/i_task_update.dart';
import 'package:yuno/api/task/rest_client.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/data/repository/tasks_repository.dart';

class ApiTaskRepository {
  ApiTaskRepository({
    required this.taskClient,
    required this.localTasksRepository,
  });

  final TaskClient taskClient;
  final LocalTasksRepository localTasksRepository;

  Future<dynamic> getTasks() async {
    try {
      final localTasks = await localTasksRepository.getItem();
      if (localTasks != null) {
        return localTasks;
      } else {
        final response = await taskClient.getTaskList();
        final data = response.data as Map<String, dynamic>;
        final tasks = (data['items'] as List)
            .map((p) => ITaskRead.fromJson(p as Map<String, dynamic>))
            .toList();

        return tasks;
      }
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> getById({required String id}) async {
    try {
      final response = await taskClient.getTaskTaskId(taskId: id);

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> create({
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

      final localTasks = await localTasksRepository.getItem();
      if (localTasks != null) {
        localTasks.add(response.data);
        await localTasksRepository.setItem(localTasks);
      }

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> updateById({
    required String id,
    String? name,
    String? deadline,
    bool? done,
    String? projectId,
  }) async {
    try {
      final response = await taskClient.putTaskTaskId(
        taskId: id,
        body: ITaskUpdate(
          name: name,
          done: done,
          deadline: deadline,
          projectId: projectId,
        ),
      );

      final localTasks = await localTasksRepository.getItem();
      final taskIndex = localTasks?.indexWhere((task) => task.id == id);
      if (localTasks != null && taskIndex != null) {
        localTasks[taskIndex] = ITaskRead(
          id: id,
          name: name ?? localTasks[taskIndex].name,
          done: done ?? localTasks[taskIndex].done,
          deadline: deadline ?? localTasks[taskIndex].deadline,
          projectId: projectId ?? localTasks[taskIndex].projectId,
        );
        await localTasksRepository.setItem(localTasks);
      }

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }

  Future<dynamic> deleteById({required String id}) async {
    try {
      final response = await taskClient.deleteTaskTaskId(taskId: id);

      final localTasks = await localTasksRepository.getItem();
      if (localTasks != null) {
        localTasks.removeWhere((task) => task.id == id);
        await localTasksRepository.setItem(localTasks);
      }

      return response.data;
    } on DioError catch (e) {
      return dioErrorInterceptor(e);
    } on Object {
      return 'Something error';
    }
  }
}
