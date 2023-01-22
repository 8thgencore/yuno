// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_paginated_i_task_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponsePaginatedITaskRead _$$_IGetResponsePaginatedITaskReadFromJson(
        Map<String, dynamic> json) =>
    _$_IGetResponsePaginatedITaskRead(
      data: PageBaseDataTypeITaskRead.fromJson(
          json['data'] as Map<String, dynamic>),
      message: json['message'] as String? ?? 'Data got correctly',
      meta: json['meta'] ?? const {},
    );

Map<String, dynamic> _$$_IGetResponsePaginatedITaskReadToJson(
        _$_IGetResponsePaginatedITaskRead instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };
