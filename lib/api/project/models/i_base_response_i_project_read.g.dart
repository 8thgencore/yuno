// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_base_response_i_project_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IBaseResponseIProjectRead _$$_IBaseResponseIProjectReadFromJson(
        Map<String, dynamic> json) =>
    _$_IBaseResponseIProjectRead(
      message: json['message'] as String? ?? '',
      meta: json['meta'] as Object? ?? {},
      data: IProjectRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IBaseResponseIProjectReadToJson(
        _$_IBaseResponseIProjectRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
