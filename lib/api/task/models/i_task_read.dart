import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_task_read.freezed.dart';
part 'i_task_read.g.dart';

@Freezed()
class ITaskRead with _$ITaskRead {
  const factory ITaskRead({
    required String name,
    required String id,
    @Default(false)
    bool? done,
    String? deadline,
    @JsonKey(name: 'project_id')
    String? projectId,
  }) = _ITaskRead;
  
  factory ITaskRead.fromJson(Map<String, dynamic> json) => _$ITaskReadFromJson(json);
}
