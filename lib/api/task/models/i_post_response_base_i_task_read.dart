import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_task_read.dart';

part 'i_post_response_base_i_task_read.freezed.dart';
part 'i_post_response_base_i_task_read.g.dart';

@Freezed()
class IPostResponseBaseITaskRead with _$IPostResponseBaseITaskRead {
  const factory IPostResponseBaseITaskRead({
    @Default('Data created correctly')
    required String message,
    @Default({})
    required Object meta,
    required ITaskRead data,
  }) = _IPostResponseBaseITaskRead;
  
  factory IPostResponseBaseITaskRead.fromJson(Map<String, dynamic> json) => _$IPostResponseBaseITaskReadFromJson(json);
}
