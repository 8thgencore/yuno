import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_task_read.dart';

part 'i_delete_response_base_i_task_read.freezed.dart';
part 'i_delete_response_base_i_task_read.g.dart';

@Freezed()
class IDeleteResponseBaseITaskRead with _$IDeleteResponseBaseITaskRead {
  const factory IDeleteResponseBaseITaskRead({
    @Default('Data deleted correctly')
    required String message,
    @Default({})
    required Object meta,
    required ITaskRead data,
  }) = _IDeleteResponseBaseITaskRead;
  
  factory IDeleteResponseBaseITaskRead.fromJson(Map<String, dynamic> json) => _$IDeleteResponseBaseITaskReadFromJson(json);
}
