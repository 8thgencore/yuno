// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_project_with_users_tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IProjectWithUsersTasks _$$_IProjectWithUsersTasksFromJson(
        Map<String, dynamic> json) =>
    _$_IProjectWithUsersTasks(
      name: json['name'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      id: json['id'] as String,
      createdBy: json['created_by_id'] as String?,
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => ITaskRead.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => IUserRead.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IProjectWithUsersTasksToJson(
        _$_IProjectWithUsersTasks instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'link': instance.link,
      'id': instance.id,
      'created_by_id': instance.createdBy,
      'tasks': instance.tasks,
      'users': instance.users,
    };
