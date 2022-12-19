// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_paginated_i_role_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponsePaginatedIRoleRead _$$_IGetResponsePaginatedIRoleReadFromJson(
        Map<String, dynamic> json) =>
    _$_IGetResponsePaginatedIRoleRead(
      data: PageBaseDataTypeIRoleRead.fromJson(
          json['data'] as Map<String, dynamic>),
      message: json['message'] as String? ?? 'Data got correctly',
      meta: json['meta'] ?? {},
    );

Map<String, dynamic> _$$_IGetResponsePaginatedIRoleReadToJson(
        _$_IGetResponsePaginatedIRoleRead instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'meta': instance.meta,
    };
