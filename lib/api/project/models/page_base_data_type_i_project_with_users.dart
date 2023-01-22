import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_project_with_users.dart';

part 'page_base_data_type_i_project_with_users.freezed.dart';
part 'page_base_data_type_i_project_with_users.g.dart';

@Freezed()
class PageBaseDataTypeIProjectWithUsers with _$PageBaseDataTypeIProjectWithUsers {
  const factory PageBaseDataTypeIProjectWithUsers({
    required List<IProjectWithUsers> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page')
    int? nextPage,
    @JsonKey(name: 'previous_page')
    int? previousPage,
  }) = _PageBaseDataTypeIProjectWithUsers;
  
  factory PageBaseDataTypeIProjectWithUsers.fromJson(Map<String, dynamic> json) => _$PageBaseDataTypeIProjectWithUsersFromJson(json);
}
