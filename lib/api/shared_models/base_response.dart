import 'package:json_annotation/json_annotation.dart';
import 'package:yuno/api/auth/models/reset_token.dart';
import 'package:yuno/api/auth/models/token.dart';
import 'package:yuno/api/auth/models/token_read.dart';
import 'package:yuno/api/project/models.dart';
import 'package:yuno/api/role/models/i_role_read.dart';
import 'package:yuno/api/role/models/paginated_data_i_role_read.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/api/task/models/paginated_data_i_task_with_project_name.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/api/user/models/paginated_data_i_user_read.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, fieldRename: FieldRename.snake)
class BaseResponse<T> {
  BaseResponse(this.message, this.meta, this.data);

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(json, fromJsonT);

  final String message;
  final Object meta;

  // ignore: inference_failure_on_instance_creation
  @_Converter()
  final T data;

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(this, toJsonT);
}

class _Converter<T> implements JsonConverter<T, Object?> {
  const _Converter();

  @override
  T fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      switch (T) {
        case Token _:
          return Token.fromJson(json) as T;
        case TokenRead _:
          return TokenRead.fromJson(json) as T;
        case ResetToken _:
          return ResetToken.fromJson(json) as T;
        case IRoleRead _:
          return IRoleRead.fromJson(json) as T;
        case PaginatedDataIRoleRead _:
          return PaginatedDataIRoleRead.fromJson(json) as T;
        case IUserRead _:
          return IUserRead.fromJson(json) as T;
        case PaginatedDataIUserRead _:
          return PaginatedDataIUserRead.fromJson(json) as T;
        case IProjectRead _:
          return IProjectRead.fromJson(json) as T;
        case IProjectWithUsers _:
          return IProjectWithUsers.fromJson(json) as T;
        case IProjectWithUsersTasks _:
          return IProjectWithUsersTasks.fromJson(json) as T;
        case PaginatedDataIProjectWithUsers _:
          return PaginatedDataIProjectWithUsers.fromJson(json) as T;
        case PaginatedDataITaskWithProjectName _:
          return PaginatedDataITaskWithProjectName.fromJson(json) as T;
        case StatisticsRead _:
          return StatisticsRead.fromJson(json) as T;
        case ITaskRead _:
          return ITaskRead.fromJson(json) as T;
      }
    }
    return json as T;
  }

  @override
  Object? toJson(T object) => object;
}
