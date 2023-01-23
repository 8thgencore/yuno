abstract class TasksProvider {
  Future<bool> setTasks(final String? tasks);

  Future<String?> getTasks();
}
