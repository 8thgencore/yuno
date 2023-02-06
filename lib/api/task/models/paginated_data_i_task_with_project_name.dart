import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/task/models/i_task_with_project_name.dart';

part 'paginated_data_i_task_with_project_name.freezed.dart';

part 'paginated_data_i_task_with_project_name.g.dart';

@Freezed()
class PaginatedDataITaskWithProjectName with _$PaginatedDataITaskWithProjectName {
  const factory PaginatedDataITaskWithProjectName({
    required List<ITaskWithProjectName> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page') int? nextPage,
    @JsonKey(name: 'previous_page') int? previousPage,
  }) = _PaginatedDataITaskWithProjectName;

  factory PaginatedDataITaskWithProjectName.fromJson(Map<String, dynamic> json) =>
      _$PaginatedDataITaskWithProjectNameFromJson(json);
}
