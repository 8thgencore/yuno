import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/role/models/i_role_read.dart';

part 'page_base_data_type_i_role_read.freezed.dart';
part 'page_base_data_type_i_role_read.g.dart';

@freezed
class PageBaseDataTypeIRoleRead with _$PageBaseDataTypeIRoleRead {
  const factory PageBaseDataTypeIRoleRead({
    required List<IRoleRead> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page')
    int? nextPage,
    @JsonKey(name: 'previous_page')
    int? previousPage,
  }) = _PageBaseDataTypeIRoleRead;
  
  factory PageBaseDataTypeIRoleRead.fromJson(Map<String, dynamic> json) => _$PageBaseDataTypeIRoleReadFromJson(json);
}
