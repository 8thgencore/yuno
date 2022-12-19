import 'package:freezed_annotation/freezed_annotation.dart';
import 'page_base_data_type_i_user_read_without_projects.dart';

part 'i_get_response_paginated_i_user_read_without_projects.freezed.dart';
part 'i_get_response_paginated_i_user_read_without_projects.g.dart';

@freezed
class IGetResponsePaginatedIUserReadWithoutProjects with _$IGetResponsePaginatedIUserReadWithoutProjects {
  const factory IGetResponsePaginatedIUserReadWithoutProjects({
    required PageBaseDataTypeIUserReadWithoutProjects data,
    @JsonKey(defaultValue: 'Data got correctly')
    String? message,
    @JsonKey(defaultValue: {})
    Object? meta,
  }) = _IGetResponsePaginatedIUserReadWithoutProjects;
  
  factory IGetResponsePaginatedIUserReadWithoutProjects.fromJson(Map<String, dynamic> json) => _$IGetResponsePaginatedIUserReadWithoutProjectsFromJson(json);
}
