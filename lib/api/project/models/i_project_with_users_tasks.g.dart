// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_project_with_users_tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IProjectWithUsersTasksImpl _$$IProjectWithUsersTasksImplFromJson(Map<String, dynamic> json) =>
    _$IProjectWithUsersTasksImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      id: json['id'] as String,
      percentCompleted: (json['percent_completed'] as num).toDouble(),
      createdBy: json['created_by_id'] as String?,
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => ITaskRead.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => IUserRead.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IProjectWithUsersTasksImplToJson(_$IProjectWithUsersTasksImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'link': instance.link,
      'id': instance.id,
      'percent_completed': instance.percentCompleted,
      'created_by_id': instance.createdBy,
      'tasks': instance.tasks,
      'users': instance.users,
    };
