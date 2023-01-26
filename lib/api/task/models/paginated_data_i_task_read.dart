import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/task/models/i_task_read.dart';

part 'paginated_data_i_task_read.freezed.dart';

part 'paginated_data_i_task_read.g.dart';

@Freezed()
class PaginatedDataITaskRead with _$PaginatedDataITaskRead {
  const factory PaginatedDataITaskRead({
    required List<ITaskRead> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page') int? nextPage,
    @JsonKey(name: 'previous_page') int? previousPage,
  }) = _PaginatedDataITaskRead;

  factory PaginatedDataITaskRead.fromJson(Map<String, dynamic> json) =>
      _$PaginatedDataITaskReadFromJson(json);
}
