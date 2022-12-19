import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_user_read_without_projects.dart';

part 'page_base_data_type_i_user_read_without_projects.freezed.dart';
part 'page_base_data_type_i_user_read_without_projects.g.dart';

@freezed
class PageBaseDataTypeIUserReadWithoutProjects with _$PageBaseDataTypeIUserReadWithoutProjects {
  const factory PageBaseDataTypeIUserReadWithoutProjects({
    required List<IUserReadWithoutProjects> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page')
    int? nextPage,
    @JsonKey(name: 'previous_page')
    int? previousPage,
  }) = _PageBaseDataTypeIUserReadWithoutProjects;
  
  factory PageBaseDataTypeIUserReadWithoutProjects.fromJson(Map<String, dynamic> json) => _$PageBaseDataTypeIUserReadWithoutProjectsFromJson(json);
}
