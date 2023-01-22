import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_task_read.dart';

part 'i_get_response_base_i_task_read.freezed.dart';
part 'i_get_response_base_i_task_read.g.dart';

@Freezed()
class IGetResponseBaseITaskRead with _$IGetResponseBaseITaskRead {
  const factory IGetResponseBaseITaskRead({
    @Default('Data got correctly')
    required String message,
    @Default({})
    required Object meta,
    required ITaskRead data,
  }) = _IGetResponseBaseITaskRead;
  
  factory IGetResponseBaseITaskRead.fromJson(Map<String, dynamic> json) => _$IGetResponseBaseITaskReadFromJson(json);
}
