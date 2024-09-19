// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_task_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ITaskReadImpl _$$ITaskReadImplFromJson(Map<String, dynamic> json) =>
    _$ITaskReadImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      done: json['done'] as bool? ?? false,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
      projectId: json['project_id'] as String?,
    );

Map<String, dynamic> _$$ITaskReadImplToJson(_$ITaskReadImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'done': instance.done,
      'deadline': instance.deadline?.toIso8601String(),
      'project_id': instance.projectId,
    };
