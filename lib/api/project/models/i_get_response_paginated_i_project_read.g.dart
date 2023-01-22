// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_paginated_i_project_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponsePaginatedIProjectRead
    _$$_IGetResponsePaginatedIProjectReadFromJson(Map<String, dynamic> json) =>
        _$_IGetResponsePaginatedIProjectRead(
          data: PageBaseDataTypeIProjectRead.fromJson(
              json['data'] as Map<String, dynamic>),
          message: json['message'] as String? ?? 'Data got correctly',
          meta: json['meta'] ?? const {},
        );

Map<String, dynamic> _$$_IGetResponsePaginatedIProjectReadToJson(
        _$_IGetResponsePaginatedIProjectRead instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };
