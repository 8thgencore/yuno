// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_post_response_base_i_user_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPostResponseBaseIUserRead _$$_IPostResponseBaseIUserReadFromJson(
        Map<String, dynamic> json) =>
    _$_IPostResponseBaseIUserRead(
      message: json['message'] as String? ?? 'Data created correctly',
      meta: json['meta'] as Object? ?? {},
      data: IUserRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IPostResponseBaseIUserReadToJson(
        _$_IPostResponseBaseIUserRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };