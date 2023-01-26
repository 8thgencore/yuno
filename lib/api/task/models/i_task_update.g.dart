// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_task_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ITaskUpdate _$$_ITaskUpdateFromJson(Map<String, dynamic> json) =>
    _$_ITaskUpdate(
      name: json['name'] as String?,
      done: json['done'] as bool? ?? false,
      deadline: json['deadline'] as String?,
    );

Map<String, dynamic> _$$_ITaskUpdateToJson(_$_ITaskUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'done': instance.done,
      'deadline': instance.deadline,
    };
