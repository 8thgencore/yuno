import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/api/user/models/i_user_read.dart';

part 'i_project_with_users_tasks.freezed.dart';
part 'i_project_with_users_tasks.g.dart';

@Freezed()
class IProjectWithUsersTasks with _$IProjectWithUsersTasks {
  const factory IProjectWithUsersTasks({
    required String name,
    required String description,
    required String link,
    required String id,
    @JsonKey(name: 'created_by_id') String? createdBy,
    List<ITaskRead>? tasks,
    List<IUserRead>? users,
  }) = _IProjectWithUsersTasks;

  factory IProjectWithUsersTasks.fromJson(Map<String, dynamic> json) =>
      _$IProjectWithUsersTasksFromJson(json);
}
