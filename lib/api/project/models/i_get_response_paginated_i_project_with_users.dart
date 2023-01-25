import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models/i_project_with_users.dart';
import 'package:yuno/api/shared_models/page_paginated_model.dart';

part 'i_get_response_paginated_i_project_with_users.freezed.dart';

part 'i_get_response_paginated_i_project_with_users.g.dart';

@Freezed()
class IGetResponsePaginatedIProjectWithUsers with _$IGetResponsePaginatedIProjectWithUsers {
  const factory IGetResponsePaginatedIProjectWithUsers({
    required PagePaginatedModel<IProjectWithUsers> data,
    @Default('Data got correctly') String? message,
    @Default({}) Object? meta,
  }) = _IGetResponsePaginatedIProjectWithUsers;

  factory IGetResponsePaginatedIProjectWithUsers.fromJson(Map<String, dynamic> json) =>
      _$IGetResponsePaginatedIProjectWithUsersFromJson(json);
}
