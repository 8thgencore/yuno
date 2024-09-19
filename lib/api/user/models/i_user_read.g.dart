// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_user_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IUserReadImpl _$$IUserReadImplFromJson(Map<String, dynamic> json) =>
    _$IUserReadImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      id: json['id'] as String,
      birthdate: json['birthdate'] as String?,
      phone: json['phone'] as String?,
      roleId: json['role_id'] as String?,
      role: json['role'] == null
          ? null
          : IRoleRead.fromJson(json['role'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : IImageMediaRead.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IUserReadImplToJson(_$IUserReadImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'id': instance.id,
      'birthdate': instance.birthdate,
      'phone': instance.phone,
      'role_id': instance.roleId,
      'role': instance.role,
      'image': instance.image,
    };
