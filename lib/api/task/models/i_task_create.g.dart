// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_task_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ITaskCreate _$$_ITaskCreateFromJson(Map<String, dynamic> json) =>
    _$_ITaskCreate(
      name: json['name'] as String,
      done: json['done'] as bool? ?? false,
      deadline: json['deadline'] == null ? null : DateTime.parse(json['deadline'] as String),
      projectId: json['project_id'] as String?,
    );

Map<String, dynamic> _$$_ITaskCreateToJson(_$_ITaskCreate instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'done': instance.done,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deadline', instance.deadline?.toIso8601String());
  writeNotNull('project_id', instance.projectId);
  return val;
}
