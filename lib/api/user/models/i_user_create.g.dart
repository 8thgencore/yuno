// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_user_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IUserCreate _$$_IUserCreateFromJson(Map<String, dynamic> json) => _$_IUserCreate(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      birthdate: json['birthdate'] as String?,
      phone: json['phone'] as String?,
      roleId: json['role_id'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_IUserCreateToJson(_$_IUserCreate instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'birthdate': instance.birthdate,
      'phone': instance.phone,
      'role_id': instance.roleId,
      'password': instance.password,
    };
