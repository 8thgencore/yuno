import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_task_read.dart';

part 'i_base_response_i_task_read.freezed.dart';
part 'i_base_response_i_task_read.g.dart';

@Freezed()
class IBaseResponseITaskRead with _$IBaseResponseITaskRead {
  const factory IBaseResponseITaskRead({
    @JsonKey(defaultValue: '')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required ITaskRead data,
  }) = _IBaseResponseITaskRead;
  
  factory IBaseResponseITaskRead.fromJson(Map<String, dynamic> json) => _$IBaseResponseITaskReadFromJson(json);
}
