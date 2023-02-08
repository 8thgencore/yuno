import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_user_update.freezed.dart';
part 'i_user_update.g.dart';

@freezed
class IUserUpdate with _$IUserUpdate {
  const factory IUserUpdate({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String username,
    required String email,
    String? birthdate,
    String? phone,
    @JsonKey(name: 'role_id') String? roleId,
  }) = _IUserUpdate;

  factory IUserUpdate.fromJson(Map<String, dynamic> json) => _$IUserUpdateFromJson(json);
}
