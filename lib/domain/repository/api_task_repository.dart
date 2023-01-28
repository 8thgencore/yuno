import 'package:yuno/api/task/models/i_task_create.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/api/task/models/i_task_update.dart';
import 'package:yuno/api/task/rest_client.dart';
import 'package:yuno/data/repository/tasks_repository.dart';

class ApiTaskRepository {
  ApiTaskRepository({
    required this.taskClient,
    required this.localTasksRepository,
  });

  final TaskClient taskClient;
  final LocalTasksRepository localTasksRepository;

  Future<List<ITaskRead>> getTasks() async {
    final response = await taskClient.getTaskList();

    return response.data.items;
  }

  Future<List<ITaskRead>> getNotDoneTasks() async {
    final response = await taskClient.getNotDoneTaskList();
    final tasks = response.data.items;
    await localTasksRepository.setItem(tasks);

    return tasks;
  }

  Future<ITaskRead> getById({required String id}) async {
    final response = await taskClient.getTaskTaskId(taskId: id);

    return response.data;
  }

  Future<ITaskRead> create({
    required String name,
    required bool done,
    String? deadline,
    String? projectId,
  }) async {
    final body = ITaskCreate(
      name: name,
      done: done,
      deadline: deadline,
      projectId: projectId,
    );
    final response = await taskClient.postTask(body: body);

    final localTasks = await localTasksRepository.getItem();
    if (localTasks != null) {
      localTasks.add(response.data);
      await localTasksRepository.setItem(localTasks);
    }

    return response.data;
  }

  Future<ITaskRead> updateById({
    required String id,
    String? name,
    String? deadline,
    bool? done,
    String? projectId,
  }) async {
    final response = await taskClient.putTaskTaskId(
      taskId: id,
      body: ITaskUpdate(
        name: name,
        done: done,
        deadline: deadline,
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
  }

  Future<ITaskRead> deleteById({required String id}) async {
    final response = await taskClient.deleteTaskTaskId(taskId: id);

    final localTasks = await localTasksRepository.getItem();
    if (localTasks != null) {
      localTasks.removeWhere((task) => task.id == id);
      await localTasksRepository.setItem(localTasks);
    }

    return response.data;
  }
}
