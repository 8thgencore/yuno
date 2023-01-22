import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_project_read.dart';

part 'i_post_response_base_i_project_read.freezed.dart';
part 'i_post_response_base_i_project_read.g.dart';

@Freezed()
class IPostResponseBaseIProjectRead with _$IPostResponseBaseIProjectRead {
  const factory IPostResponseBaseIProjectRead({
    @Default('Data created correctly')
    required String message,
    @Default({})
    required Object meta,
    required IProjectRead data,
  }) = _IPostResponseBaseIProjectRead;
  
  factory IPostResponseBaseIProjectRead.fromJson(Map<String, dynamic> json) => _$IPostResponseBaseIProjectReadFromJson(json);
}
