import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_role_create.freezed.dart';
part 'i_role_create.g.dart';

@freezed
class IRoleCreate with _$IRoleCreate {
  const factory IRoleCreate({
    required String name,
    required String description,
  }) = _IRoleCreate;

  factory IRoleCreate.fromJson(Map<String, dynamic> json) => _$IRoleCreateFromJson(json);
}
