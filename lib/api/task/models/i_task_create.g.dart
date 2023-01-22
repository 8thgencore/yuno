// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_task_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ITaskCreate _$$_ITaskCreateFromJson(Map<String, dynamic> json) =>
    _$_ITaskCreate(
      name: json['name'] as String,
      done: json['done'] as bool? ?? false,
      deadline: json['deadline'] as String?,
      projectId: json['project_id'] as String?,
    );

Map<String, dynamic> _$$_ITaskCreateToJson(_$_ITaskCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'done': instance.done,
      'deadline': instance.deadline,
      'project_id': instance.projectId,
    };
