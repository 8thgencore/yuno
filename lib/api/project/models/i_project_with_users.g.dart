// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_project_with_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IProjectWithUsers _$$_IProjectWithUsersFromJson(Map<String, dynamic> json) =>
    _$_IProjectWithUsers(
      name: json['name'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      id: json['id'] as String,
      createdBy: json['created_by_id'] as String?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => IUserRead.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IProjectWithUsersToJson(_$_IProjectWithUsers instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'link': instance.link,
      'id': instance.id,
      'created_by_id': instance.createdBy,
      'users': instance.users,
    };
