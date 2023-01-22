// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_post_response_base_i_project_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPostResponseBaseIProjectRead _$$_IPostResponseBaseIProjectReadFromJson(
        Map<String, dynamic> json) =>
    _$_IPostResponseBaseIProjectRead(
      message: json['message'] as String? ?? 'Data created correctly',
      meta: json['meta'] as Object? ?? const {},
      data: IProjectRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IPostResponseBaseIProjectReadToJson(
        _$_IPostResponseBaseIProjectRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
