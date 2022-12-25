import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_user_update.freezed.dart';

part 'i_user_update.g.dart';

@freezed
class IUserUpdate with _$IUserUpdate {
  const factory IUserUpdate({
    @JsonKey(name: 'first_name')
    String? firstName,
    @JsonKey(name: 'last_name')
    String? lastName,
    String? username,
    String? email,
    String? birthdate,
    String? phone,
    @JsonKey(name: 'role_id')
    String? roleId,
  }) = _IUserUpdate;

  factory IUserUpdate.fromJson(Map<String, dynamic> json) => _$IUserUpdateFromJson(json);
}
