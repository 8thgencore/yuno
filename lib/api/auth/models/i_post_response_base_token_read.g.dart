// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_post_response_base_token_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPostResponseBaseTokenRead _$$_IPostResponseBaseTokenReadFromJson(
        Map<String, dynamic> json) =>
    _$_IPostResponseBaseTokenRead(
      message: json['message'] as String? ?? 'Data created correctly',
      meta: json['meta'] as Object? ?? {},
      data: TokenRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IPostResponseBaseTokenReadToJson(
        _$_IPostResponseBaseTokenRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
