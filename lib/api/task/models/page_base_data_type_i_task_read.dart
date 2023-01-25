import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_task_read.dart';

part 'page_base_data_type_i_task_read.freezed.dart';
part 'page_base_data_type_i_task_read.g.dart';

@Freezed()
class PageBaseDataTypeITaskRead with _$PageBaseDataTypeITaskRead {
  const factory PageBaseDataTypeITaskRead({
    required List<ITaskRead> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page')
    int? nextPage,
    @JsonKey(name: 'previous_page')
    int? previousPage,
  }) = _PageBaseDataTypeITaskRead;
  
  factory PageBaseDataTypeITaskRead.fromJson(Map<String, dynamic> json) => _$PageBaseDataTypeITaskReadFromJson(json);
}
