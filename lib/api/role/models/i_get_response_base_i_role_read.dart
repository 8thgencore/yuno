import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/role/models/i_role_read.dart';

part 'i_get_response_base_i_role_read.freezed.dart';
part 'i_get_response_base_i_role_read.g.dart';

@freezed
class IGetResponseBaseIRoleRead with _$IGetResponseBaseIRoleRead {
  const factory IGetResponseBaseIRoleRead({
    @JsonKey(defaultValue: 'Data got correctly')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required IRoleRead data,
  }) = _IGetResponseBaseIRoleRead;
  
  factory IGetResponseBaseIRoleRead.fromJson(Map<String, dynamic> json) => _$IGetResponseBaseIRoleReadFromJson(json);
}
