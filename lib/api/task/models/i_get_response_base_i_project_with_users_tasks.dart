import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_with_users_tasks.dart';

part 'i_get_response_base_i_project_with_users_tasks.freezed.dart';
part 'i_get_response_base_i_project_with_users_tasks.g.dart';

@Freezed()
class IGetResponseBaseIProjectWithUsersTasks with _$IGetResponseBaseIProjectWithUsersTasks {
  const factory IGetResponseBaseIProjectWithUsersTasks({
    @Default('') required String message,
    @Default({})
    required Object meta,
    required IProjectWithUsersTasks data,
  }) = _IGetResponseBaseIProjectWithUsersTasks;
  
  factory IGetResponseBaseIProjectWithUsersTasks.fromJson(Map<String, dynamic> json) => _$IGetResponseBaseIProjectWithUsersTasksFromJson(json);
}
