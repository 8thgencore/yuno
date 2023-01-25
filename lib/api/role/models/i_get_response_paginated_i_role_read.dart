import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/role/models/i_role_read.dart';
import 'package:yuno/api/shared_models/page_paginated_model.dart';

part 'i_get_response_paginated_i_role_read.freezed.dart';

part 'i_get_response_paginated_i_role_read.g.dart';

@freezed
class IGetResponsePaginatedIRoleRead with _$IGetResponsePaginatedIRoleRead {
  const factory IGetResponsePaginatedIRoleRead({
    required PagePaginatedModel<IRoleRead> data,
    @JsonKey(defaultValue: 'Data got correctly') String? message,
    @JsonKey(defaultValue: {}) Object? meta,
  }) = _IGetResponsePaginatedIRoleRead;
  
  factory IGetResponsePaginatedIRoleRead.fromJson(Map<String, dynamic> json) => _$IGetResponsePaginatedIRoleReadFromJson(json);
}
