import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/role/models/i_role_read.dart';

part 'paginated_data_i_role_read.freezed.dart';

part 'paginated_data_i_role_read.g.dart';

@Freezed()
class PaginatedDataIRoleRead with _$PaginatedDataIRoleRead {
  const factory PaginatedDataIRoleRead({
    required List<IRoleRead> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page') int? nextPage,
    @JsonKey(name: 'previous_page') int? previousPage,
  }) = _PaginatedDataIRoleRead;

  factory PaginatedDataIRoleRead.fromJson(Map<String, dynamic> json) =>
      _$PaginatedDataIRoleReadFromJson(json);
}
