// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_paginated_i_user_read_without_projects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponsePaginatedIUserReadWithoutProjects
    _$$_IGetResponsePaginatedIUserReadWithoutProjectsFromJson(
            Map<String, dynamic> json) =>
        _$_IGetResponsePaginatedIUserReadWithoutProjects(
          data: PageBaseDataTypeIUserReadWithoutProjects.fromJson(
              json['data'] as Map<String, dynamic>),
          message: json['message'] as String? ?? 'Data got correctly',
          meta: json['meta'] ?? {},
        );

Map<String, dynamic> _$$_IGetResponsePaginatedIUserReadWithoutProjectsToJson(
        _$_IGetResponsePaginatedIUserReadWithoutProjects instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };
