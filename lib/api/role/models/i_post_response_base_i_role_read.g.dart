// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_post_response_base_i_role_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPostResponseBaseIRoleRead _$$_IPostResponseBaseIRoleReadFromJson(
        Map<String, dynamic> json) =>
    _$_IPostResponseBaseIRoleRead(
      message: json['message'] as String? ?? 'Data created correctly',
      meta: json['meta'] as Object? ?? {},
      data: IRoleRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IPostResponseBaseIRoleReadToJson(
        _$_IPostResponseBaseIRoleRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
