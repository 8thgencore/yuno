import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_task_create.freezed.dart';
part 'i_task_create.g.dart';

@Freezed()
class ITaskCreate with _$ITaskCreate {
  const factory ITaskCreate({
    required String name,
    @Default(false) bool? done,
    @JsonKey(includeIfNull: false) DateTime? deadline,
    @JsonKey(name: 'project_id', includeIfNull: false) String? projectId,
  }) = _ITaskCreate;

  factory ITaskCreate.fromJson(Map<String, dynamic> json) => _$ITaskCreateFromJson(json);
}
