// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_delete_response_base_i_project_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IDeleteResponseBaseIProjectRead _$$_IDeleteResponseBaseIProjectReadFromJson(
        Map<String, dynamic> json) =>
    _$_IDeleteResponseBaseIProjectRead(
      message: json['message'] as String? ?? 'Data deleted correctly',
      meta: json['meta'] as Object? ?? const {},
      data: IProjectRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IDeleteResponseBaseIProjectReadToJson(
        _$_IDeleteResponseBaseIProjectRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
