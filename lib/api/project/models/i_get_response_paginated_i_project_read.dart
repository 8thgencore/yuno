import 'package:freezed_annotation/freezed_annotation.dart';
import 'page_base_data_type_i_project_read.dart';

part 'i_get_response_paginated_i_project_read.freezed.dart';
part 'i_get_response_paginated_i_project_read.g.dart';

@Freezed()
class IGetResponsePaginatedIProjectRead with _$IGetResponsePaginatedIProjectRead {
  const factory IGetResponsePaginatedIProjectRead({
    required PageBaseDataTypeIProjectRead data,
    @Default('Data got correctly')
    String? message,
    @Default({})
    Object? meta,
  }) = _IGetResponsePaginatedIProjectRead;
  
  factory IGetResponsePaginatedIProjectRead.fromJson(Map<String, dynamic> json) => _$IGetResponsePaginatedIProjectReadFromJson(json);
}
