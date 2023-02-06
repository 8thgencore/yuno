import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_task_with_project_name.freezed.dart';

part 'i_task_with_project_name.g.dart';

@Freezed()
class ITaskWithProjectName with _$ITaskWithProjectName {
  const factory ITaskWithProjectName({
    required String name,
    required String id,
    @Default(false) bool? done,
    DateTime? deadline,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'project_name') String? projectName,
  }) = _ITaskWithProjectName;

  factory ITaskWithProjectName.fromJson(Map<String, dynamic> json) =>
      _$ITaskWithProjectNameFromJson(json);
}
