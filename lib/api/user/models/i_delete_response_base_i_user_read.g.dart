// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_delete_response_base_i_user_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IDeleteResponseBaseIUserRead _$$_IDeleteResponseBaseIUserReadFromJson(
        Map<String, dynamic> json) =>
    _$_IDeleteResponseBaseIUserRead(
      message: json['message'] as String? ?? 'Data deleted correctly',
      meta: json['meta'] as Object? ?? {},
      data: IUserRead.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IDeleteResponseBaseIUserReadToJson(
        _$_IDeleteResponseBaseIUserRead instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
