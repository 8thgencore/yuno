// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_put_response_base_i_user_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPutResponseBaseIUserRead _$$_IPutResponseBaseIUserReadFromJson(
        Map<String, dynamic> json) =>
    _$_IPutResponseBaseIUserRead(
      message: json['message'] as String? ?? 'Data updated correctly',
      meta: json['meta'] as Object? ?? {},
      data: IUserRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IPutResponseBaseIUserReadToJson(
        _$_IPutResponseBaseIUserRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
