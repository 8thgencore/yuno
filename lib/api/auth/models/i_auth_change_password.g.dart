// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_auth_change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IAuthChangePasswordImpl _$$IAuthChangePasswordImplFromJson(
        Map<String, dynamic> json) =>
    _$IAuthChangePasswordImpl(
      currentPassword: json['current_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$IAuthChangePasswordImplToJson(
        _$IAuthChangePasswordImpl instance) =>
    <String, dynamic>{
      'current_password': instance.currentPassword,
      'new_password': instance.newPassword,
    };
