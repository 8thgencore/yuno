// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_get_response_base_i_project_with_users_tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IGetResponseBaseIProjectWithUsersTasks
    _$$_IGetResponseBaseIProjectWithUsersTasksFromJson(
            Map<String, dynamic> json) =>
        _$_IGetResponseBaseIProjectWithUsersTasks(
          message: json['message'] as String? ?? 'Data got correctly',
          meta: json['meta'] as Object? ?? const {},
          data: IProjectWithUsersTasks.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_IGetResponseBaseIProjectWithUsersTasksToJson(
        _$_IGetResponseBaseIProjectWithUsersTasks instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
