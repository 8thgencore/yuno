// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_base_i_project_with_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponseBaseIProjectWithUsers
    _$$_IGetResponseBaseIProjectWithUsersFromJson(Map<String, dynamic> json) =>
        _$_IGetResponseBaseIProjectWithUsers(
      message: json['message'] as String? ?? '',
      meta: json['meta'] as Object? ?? {},
      data: IProjectWithUsers.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IGetResponseBaseIProjectWithUsersToJson(
        _$_IGetResponseBaseIProjectWithUsers instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
