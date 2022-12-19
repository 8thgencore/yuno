import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_role_read.dart';

part 'i_put_response_base_i_role_read.freezed.dart';
part 'i_put_response_base_i_role_read.g.dart';

@freezed
class IPutResponseBaseIRoleRead with _$IPutResponseBaseIRoleRead {
  const factory IPutResponseBaseIRoleRead({
    @JsonKey(defaultValue: 'Data updated correctly')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required IRoleRead data,
  }) = _IPutResponseBaseIRoleRead;
  
  factory IPutResponseBaseIRoleRead.fromJson(Map<String, dynamic> json) => _$IPutResponseBaseIRoleReadFromJson(json);
}
