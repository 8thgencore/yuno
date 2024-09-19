// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_project_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IProjectReadImpl _$$IProjectReadImplFromJson(Map<String, dynamic> json) =>
    _$IProjectReadImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      id: json['id'] as String,
      percentCompleted: (json['percent_completed'] as num).toDouble(),
      createdBy: json['created_by_id'] as String?,
    );

Map<String, dynamic> _$$IProjectReadImplToJson(_$IProjectReadImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'link': instance.link,
      'id': instance.id,
      'percent_completed': instance.percentCompleted,
      'created_by_id': instance.createdBy,
    };
