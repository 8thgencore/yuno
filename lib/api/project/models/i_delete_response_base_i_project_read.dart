import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_project_read.dart';

part 'i_delete_response_base_i_project_read.freezed.dart';
part 'i_delete_response_base_i_project_read.g.dart';

@Freezed()
class IDeleteResponseBaseIProjectRead with _$IDeleteResponseBaseIProjectRead {
  const factory IDeleteResponseBaseIProjectRead({
    @Default('Data deleted correctly')
    required String message,
    @Default({})
    required Object meta,
    required IProjectRead data,
  }) = _IDeleteResponseBaseIProjectRead;
  
  factory IDeleteResponseBaseIProjectRead.fromJson(Map<String, dynamic> json) => _$IDeleteResponseBaseIProjectReadFromJson(json);
}
