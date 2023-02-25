import 'package:yuno/api/task/models.dart';
import 'package:yuno/api/task/models/i_task_with_project_name.dart';
import 'package:yuno/api/task/rest_client.dart';
import 'package:yuno/data/repository/tasks_data_repository.dart';

abstract class ITaskRepository {
  Future<List<ITaskWithProjectName>> getTasks();

  Future<List<ITaskWithProjectName>> getNotDoneTasks();

  Future<List<ITaskWithProjectName>> getTaskByDeadline(String date);

  Future<List<ITaskWithProjectName>?> getCachedNotDoneTasks();

  Future<ITaskRead> getById({required String id});

  Future<ITaskRead> create({
    required String name,
    required bool done,
    DateTime? deadline,
    String? projectId,
  });

  Future<ITaskRead> updateById({
    required String id,
    String? name,
    DateTime? deadline,
    bool? done,
    String? projectId,
  });

  Future<ITaskRead> deleteById({required String id});
}

class ApiTaskRepository implements ITaskRepository {
  ApiTaskRepository({
    required this.taskClient,
    required this.tasksNotDoneDataRepository,
  });

  final TaskClient taskClient;
  final TasksNotDoneDataRepository tasksNotDoneDataRepository;

  @override
  Future<List<ITaskWithProjectName>> getTasks() async {
    final response = await taskClient.getTaskList();
    final tasks = response.data.items;

    return tasks;
  }

  @override
  Future<List<ITaskWithProjectName>> getNotDoneTasks() async {
    final response = await taskClient.getNotDoneTaskList(size: 100);
    final tasks = response.data.items;
    await tasksNotDoneDataRepository.setItem(tasks);

    return tasks;
  }

  @override
  Future<List<ITaskWithProjectName>> getTaskByDeadline(String date) async {
    final response = await taskClient.getTaskByDeadline(date: date);
    final tasks = response.data.items;

    return tasks;
  }

  @override
  Future<List<ITaskWithProjectName>?> getCachedNotDoneTasks() async {
    final tasks = await tasksNotDoneDataRepository.getItem();

    return tasks;
  }

  @override
  Future<ITaskRead> getById({required String id}) async {
    final response = await taskClient.getTaskTaskId(taskId: id);

    return response.data;
  }

  @override
  Future<ITaskRead> create({
    required String name,
    required bool done,
    DateTime? deadline,
    String? projectId,
  }) async {
    final body = ITaskCreate(
      name: name,
      done: done,
      deadline: deadline,
      projectId: projectId,
    );
    final response = await taskClient.postTask(body: body);
    await getNotDoneTasks();

    // final localTasks = await tasksNotDoneDataRepository.getItem();
    // if (localTasks != null) {
    //   localTasks.add(response.data);
    //   await tasksNotDoneDataRepository.setItem(localTasks);
    // }

    return response.data;
  }

  @override
  Future<ITaskRead> updateById({
    required String id,
    String? name,
    DateTime? deadline,
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

    await getNotDoneTasks();

    // final localTasks = await tasksNotDoneDataRepository.getItem();
    // // delete task if completed
    // if (done ?? true) {
    //   localTasks?.removeWhere((task) => task.id == id);
    // } else if (done == false) {
    //   // check task if exists
    //   final taskIndex = localTasks?.indexWhere((task) => task.id == id);
    //   // update task
    //   if (localTasks != null && taskIndex != null && taskIndex != -1) {
    //     localTasks[taskIndex] = ITaskRead(
    //       id: id,
    //       name: name ?? localTasks[taskIndex].name,
    //       done: done ?? localTasks[taskIndex].done,
    //       deadline: deadline ?? localTasks[taskIndex].deadline,
    //       projectId: localTasks[taskIndex].projectId,
    //     );
    //   }
    //   // add new task
    //   else {
    //     final task = ITaskWithProjectName(
    //       id: id,
    //       name: name ?? '',
    //       done: done,
    //       deadline: deadline,
    //       projectId: projectId,
    //     );
    //     localTasks?.insert(0, task);
    //   }
    // }
    // await tasksNotDoneDataRepository.setItem(localTasks);

    return response.data;
  }

  @override
  Future<ITaskRead> deleteById({required String id}) async {
    final response = await taskClient.deleteTaskTaskId(taskId: id);

    final localTasks = await tasksNotDoneDataRepository.getItem();
    if (localTasks != null) {
      localTasks.removeWhere((task) => task.id == id);
      await tasksNotDoneDataRepository.setItem(localTasks);
    }

    return response.data;
  }
}
