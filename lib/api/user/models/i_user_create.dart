import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_user_create.freezed.dart';
part 'i_user_create.g.dart';

@freezed
class IUserCreate with _$IUserCreate {
  const factory IUserCreate({
    @JsonKey(name: 'first_name')
    required String firstName,
    @JsonKey(name: 'last_name')
    required String lastName,
    required String username,
    required String email,
    String? birthdate,
    String? phone,
    @JsonKey(name: 'role_id')
    String? roleId,
    String? password,
  }) = _IUserCreate;
  
  factory IUserCreate.fromJson(Map<String, dynamic> json) => _$IUserCreateFromJson(json);
}
