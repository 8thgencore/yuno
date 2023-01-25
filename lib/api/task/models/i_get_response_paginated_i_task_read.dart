import 'package:freezed_annotation/freezed_annotation.dart';

import 'page_base_data_type_i_task_read.dart';

part 'i_get_response_paginated_i_task_read.freezed.dart';
part 'i_get_response_paginated_i_task_read.g.dart';

@Freezed()
class IGetResponsePaginatedITaskRead with _$IGetResponsePaginatedITaskRead {
  const factory IGetResponsePaginatedITaskRead({
    @JsonKey(defaultValue: '') required String message,
    @JsonKey(defaultValue: {}) Object? meta,
    required PageBaseDataTypeITaskRead data,
  }) = _IGetResponsePaginatedITaskRead;
  
  factory IGetResponsePaginatedITaskRead.fromJson(Map<String, dynamic> json) => _$IGetResponsePaginatedITaskReadFromJson(json);
}
