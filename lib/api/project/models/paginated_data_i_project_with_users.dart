import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yuno/api/project/models/i_project_with_users.dart';

part 'paginated_data_i_project_with_users.freezed.dart';

part 'paginated_data_i_project_with_users.g.dart';

@Freezed()
class PaginatedDataIProjectWithUsers with _$PaginatedDataIProjectWithUsers {
  const factory PaginatedDataIProjectWithUsers({
    required List<IProjectWithUsers> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page') int? nextPage,
    @JsonKey(name: 'previous_page') int? previousPage,
  }) = _PaginatedDataIProjectWithUsers;

  factory PaginatedDataIProjectWithUsers.fromJson(Map<String, dynamic> json) =>
      _$PaginatedDataIProjectWithUsersFromJson(json);
}
