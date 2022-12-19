import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/role/models/i_role_read.dart';

part 'i_user_read_without_projects.freezed.dart';
part 'i_user_read_without_projects.g.dart';

@freezed
class IUserReadWithoutProjects with _$IUserReadWithoutProjects {
  const factory IUserReadWithoutProjects({
    @JsonKey(name: 'first_name')
    required String firstName,
    @JsonKey(name: 'last_name')
    required String lastName,
    required String username,
    required String email,
    required String id,
    String? birthdate,
    String? phone,
    @JsonKey(name: 'role_id')
    String? roleId,
    IRoleRead? role,
  }) = _IUserReadWithoutProjects;
  
  factory IUserReadWithoutProjects.fromJson(Map<String, dynamic> json) => _$IUserReadWithoutProjectsFromJson(json);
}
