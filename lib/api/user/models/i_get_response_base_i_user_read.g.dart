// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_base_i_user_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponseBaseIUserRead _$$_IGetResponseBaseIUserReadFromJson(
        Map<String, dynamic> json) =>
    _$_IGetResponseBaseIUserRead(
      message: json['message'] as String? ?? 'Data got correctly',
      meta: json['meta'] as Object? ?? {},
      data: IUserRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IGetResponseBaseIUserReadToJson(
        _$_IGetResponseBaseIUserRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
