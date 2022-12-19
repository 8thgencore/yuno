import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_role_read.dart';

part 'i_post_response_base_i_role_read.freezed.dart';
part 'i_post_response_base_i_role_read.g.dart';

@freezed
class IPostResponseBaseIRoleRead with _$IPostResponseBaseIRoleRead {
  const factory IPostResponseBaseIRoleRead({
    @JsonKey(defaultValue: 'Data created correctly')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required IRoleRead data,
  }) = _IPostResponseBaseIRoleRead;
  
  factory IPostResponseBaseIRoleRead.fromJson(Map<String, dynamic> json) => _$IPostResponseBaseIRoleReadFromJson(json);
}
