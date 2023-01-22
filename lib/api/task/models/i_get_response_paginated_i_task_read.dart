import 'package:freezed_annotation/freezed_annotation.dart';
import 'page_base_data_type_i_task_read.dart';

part 'i_get_response_paginated_i_task_read.freezed.dart';
part 'i_get_response_paginated_i_task_read.g.dart';

@Freezed()
class IGetResponsePaginatedITaskRead with _$IGetResponsePaginatedITaskRead {
  const factory IGetResponsePaginatedITaskRead({
    required PageBaseDataTypeITaskRead data,
    @Default('Data got correctly')
    String? message,
    @Default({})
    Object? meta,
  }) = _IGetResponsePaginatedITaskRead;
  
  factory IGetResponsePaginatedITaskRead.fromJson(Map<String, dynamic> json) => _$IGetResponsePaginatedITaskReadFromJson(json);
}
