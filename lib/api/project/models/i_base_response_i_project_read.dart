import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_project_read.dart';

part 'i_base_response_i_project_read.freezed.dart';
part 'i_base_response_i_project_read.g.dart';

@Freezed()
class IBaseResponseIProjectRead with _$IBaseResponseIProjectRead {
  const factory IBaseResponseIProjectRead({
    @JsonKey(defaultValue: '')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required IProjectRead data,
  }) = _IBaseResponseIProjectRead;
  
  factory IBaseResponseIProjectRead.fromJson(Map<String, dynamic> json) => _$IBaseResponseIProjectReadFromJson(json);
}
