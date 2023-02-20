// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_auth_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IAuthChangePassword _$$_IAuthChangePasswordFromJson(Map<String, dynamic> json) =>
    _$_IAuthChangePassword(
      currentPassword: json['current_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$_IAuthChangePasswordToJson(_$_IAuthChangePassword instance) =>
    <String, dynamic>{
      'current_password': instance.currentPassword,
      'new_password': instance.newPassword,
    };
