// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_post_response_base_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPostResponseBaseToken _$$_IPostResponseBaseTokenFromJson(
        Map<String, dynamic> json) =>
    _$_IPostResponseBaseToken(
      message: json['message'] as String? ?? 'Data created correctly',
      meta: json['meta'] as Object? ?? {},
      data: Token.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IPostResponseBaseTokenToJson(
        _$_IPostResponseBaseToken instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
