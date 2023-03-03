import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yuno/api/user/models.dart';

part 'paginated_data_i_user_read.freezed.dart';

part 'paginated_data_i_user_read.g.dart';

@Freezed()
class PaginatedDataIUserRead with _$PaginatedDataIUserRead {
  const factory PaginatedDataIUserRead({
    required List<IUserRead> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page') int? nextPage,
    @JsonKey(name: 'previous_page') int? previousPage,
  }) = _PaginatedDataIUserRead;

  factory PaginatedDataIUserRead.fromJson(Map<String, dynamic> json) =>
      _$PaginatedDataIUserReadFromJson(json);
}
