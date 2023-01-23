// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_paginated_i_task_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponsePaginatedITaskRead _$$_IGetResponsePaginatedITaskReadFromJson(
        Map<String, dynamic> json) =>
    _$_IGetResponsePaginatedITaskRead(
      message: json['message'] as String? ?? 'Data got correctly',
      meta: json['meta'] ?? const {},
      data: PageBaseDataTypeITaskRead.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IGetResponsePaginatedITaskReadToJson(
        _$_IGetResponsePaginatedITaskRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
