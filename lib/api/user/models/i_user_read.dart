import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/role/models/i_role_read.dart';
import 'package:yuno/api/user/models/i_image_media_read.dart';

part 'i_user_read.freezed.dart';
part 'i_user_read.g.dart';

@freezed
class IUserRead with _$IUserRead {
  const factory IUserRead({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String username,
    required String email,
    required String id,
    String? birthdate,
    String? phone,
    @JsonKey(name: 'role_id') String? roleId,
    IRoleRead? role,
    IImageMediaRead? image,
  }) = _IUserRead;

  factory IUserRead.fromJson(Map<String, dynamic> json) => _$IUserReadFromJson(json);
}
