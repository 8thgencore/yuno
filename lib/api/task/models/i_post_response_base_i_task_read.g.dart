// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_post_response_base_i_task_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPostResponseBaseITaskRead _$$_IPostResponseBaseITaskReadFromJson(
        Map<String, dynamic> json) =>
    _$_IPostResponseBaseITaskRead(
      message: json['message'] as String? ?? 'Data created correctly',
      meta: json['meta'] as Object? ?? const {},
      data: ITaskRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IPostResponseBaseITaskReadToJson(
        _$_IPostResponseBaseITaskRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
