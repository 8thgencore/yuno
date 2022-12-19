// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_put_response_base_i_role_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPutResponseBaseIRoleRead _$$_IPutResponseBaseIRoleReadFromJson(
        Map<String, dynamic> json) =>
    _$_IPutResponseBaseIRoleRead(
      message: json['message'] as String? ?? 'Data updated correctly',
      meta: json['meta'] as Object? ?? {},
      data: IRoleRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IPutResponseBaseIRoleReadToJson(
        _$_IPutResponseBaseIRoleRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
