// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_task_with_project_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ITaskWithProjectName _$$_ITaskWithProjectNameFromJson(Map<String, dynamic> json) =>
    _$_ITaskWithProjectName(
      name: json['name'] as String,
      id: json['id'] as String,
      done: json['done'] as bool? ?? false,
      deadline: json['deadline'] == null ? null : DateTime.parse(json['deadline'] as String),
      projectId: json['project_id'] as String?,
      projectName: json['project_name'] as String?,
    );

Map<String, dynamic> _$$_ITaskWithProjectNameToJson(_$_ITaskWithProjectName instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'done': instance.done,
      'deadline': instance.deadline?.toIso8601String(),
      'project_id': instance.projectId,
      'project_name': instance.projectName,
    };
