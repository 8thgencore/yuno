// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_base_i_task_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponseBaseITaskRead _$$_IGetResponseBaseITaskReadFromJson(
        Map<String, dynamic> json) =>
    _$_IGetResponseBaseITaskRead(
      message: json['message'] as String? ?? 'Data got correctly',
      meta: json['meta'] as Object? ?? const {},
      data: ITaskRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IGetResponseBaseITaskReadToJson(
        _$_IGetResponseBaseITaskRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
