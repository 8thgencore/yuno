// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_base_response_i_task_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IBaseResponseITaskRead _$$_IBaseResponseITaskReadFromJson(
        Map<String, dynamic> json) =>
    _$_IBaseResponseITaskRead(
      message: json['message'] as String? ?? '',
      meta: json['meta'] as Object? ?? {},
      data: ITaskRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IBaseResponseITaskReadToJson(
        _$_IBaseResponseITaskRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
