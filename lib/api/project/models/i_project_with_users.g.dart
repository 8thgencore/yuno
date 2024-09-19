// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_project_with_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IProjectWithUsersImpl _$$IProjectWithUsersImplFromJson(
        Map<String, dynamic> json) =>
    _$IProjectWithUsersImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      id: json['id'] as String,
      percentCompleted: (json['percent_completed'] as num).toDouble(),
      createdBy: json['created_by_id'] as String?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => IUserRead.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IProjectWithUsersImplToJson(
        _$IProjectWithUsersImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'link': instance.link,
      'id': instance.id,
      'percent_completed': instance.percentCompleted,
      'created_by_id': instance.createdBy,
      'users': instance.users,
    };
