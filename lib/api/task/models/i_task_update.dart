import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_task_update.freezed.dart';
part 'i_task_update.g.dart';

@Freezed()
class ITaskUpdate with _$ITaskUpdate {
  const factory ITaskUpdate({
    String? name,
    @Default(false) bool? done,
    String? deadline,
  }) = _ITaskUpdate;

  factory ITaskUpdate.fromJson(Map<String, dynamic> json) => _$ITaskUpdateFromJson(json);
}
