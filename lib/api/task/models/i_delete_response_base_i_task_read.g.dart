// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_delete_response_base_i_task_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IDeleteResponseBaseITaskRead _$$_IDeleteResponseBaseITaskReadFromJson(
        Map<String, dynamic> json) =>
    _$_IDeleteResponseBaseITaskRead(
      message: json['message'] as String? ?? 'Data deleted correctly',
      meta: json['meta'] as Object? ?? const {},
      data: ITaskRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IDeleteResponseBaseITaskReadToJson(
        _$_IDeleteResponseBaseITaskRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
