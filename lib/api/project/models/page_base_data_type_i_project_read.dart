import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_project_read.dart';

part 'page_base_data_type_i_project_read.freezed.dart';
part 'page_base_data_type_i_project_read.g.dart';

@Freezed()
class PageBaseDataTypeIProjectRead with _$PageBaseDataTypeIProjectRead {
  const factory PageBaseDataTypeIProjectRead({
    required List<IProjectRead> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page')
    int? nextPage,
    @JsonKey(name: 'previous_page')
    int? previousPage,
  }) = _PageBaseDataTypeIProjectRead;
  
  factory PageBaseDataTypeIProjectRead.fromJson(Map<String, dynamic> json) => _$PageBaseDataTypeIProjectReadFromJson(json);
}
