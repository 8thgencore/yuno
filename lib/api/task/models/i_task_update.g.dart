// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_task_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ITaskUpdateImpl _$$ITaskUpdateImplFromJson(Map<String, dynamic> json) =>
    _$ITaskUpdateImpl(
      name: json['name'] as String?,
      done: json['done'] as bool? ?? false,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$ITaskUpdateImplToJson(_$ITaskUpdateImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'done': instance.done,
      'deadline': instance.deadline?.toIso8601String(),
    };
