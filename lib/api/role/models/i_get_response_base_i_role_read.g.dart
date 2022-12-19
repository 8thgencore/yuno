// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_base_i_role_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponseBaseIRoleRead _$$_IGetResponseBaseIRoleReadFromJson(
        Map<String, dynamic> json) =>
    _$_IGetResponseBaseIRoleRead(
      message: json['message'] as String? ?? 'Data got correctly',
      meta: json['meta'] as Object? ?? {},
      data: IRoleRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IGetResponseBaseIRoleReadToJson(
        _$_IGetResponseBaseIRoleRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
