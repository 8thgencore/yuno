import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/user/models/i_user_read.dart';

part 'i_project_with_users.freezed.dart';
part 'i_project_with_users.g.dart';

@Freezed()
class IProjectWithUsers with _$IProjectWithUsers {
  const factory IProjectWithUsers({
    required String name,
    required String description,
    required String link,
    required String id,
    @JsonKey(name: 'created_by_id') String? createdBy,
    List<IUserRead>? users,
  }) = _IProjectWithUsers;

  factory IProjectWithUsers.fromJson(Map<String, dynamic> json) =>
      _$IProjectWithUsersFromJson(json);
}
