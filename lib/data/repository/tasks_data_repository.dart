import 'dart:convert';

import 'package:yuno/api/task/models/i_task_with_project_name.dart';
import 'package:yuno/data/repository/base/reactive_repository.dart';
import 'package:yuno/data/repository/tasks_provider.dart';

class TasksNotDoneDataRepository extends ReactiveRepository<List<ITaskWithProjectName>> {
  TasksNotDoneDataRepository(this._tasksProvider);

  final TasksProvider _tasksProvider;

  @override
  List<ITaskWithProjectName> convertFromString(String rawItem) =>
      (json.decode(rawItem) as List<dynamic>)
          .map((e) => ITaskWithProjectName.fromJson(e as Map<String, dynamic>))
          .toList();

  @override
  String convertToString(List<ITaskWithProjectName> item) => json.encode(item);

  @override
  Future<String?> getRawData() => _tasksProvider.getTasks();

  @override
  Future<bool> saveRawData(String? item) => _tasksProvider.setTasks(item);
}
