import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_project_with_users.dart';

part 'i_get_response_base_i_project_with_users.freezed.dart';
part 'i_get_response_base_i_project_with_users.g.dart';

@Freezed()
class IGetResponseBaseIProjectWithUsers with _$IGetResponseBaseIProjectWithUsers {
  const factory IGetResponseBaseIProjectWithUsers({
    @JsonKey(defaultValue: '') required String message,
    @JsonKey(defaultValue: {}) required Object meta,
    required IProjectWithUsers data,
  }) = _IGetResponseBaseIProjectWithUsers;
  
  factory IGetResponseBaseIProjectWithUsers.fromJson(Map<String, dynamic> json) => _$IGetResponseBaseIProjectWithUsersFromJson(json);
}
