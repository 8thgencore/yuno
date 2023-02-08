import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_role_update.freezed.dart';
part 'i_role_update.g.dart';

@freezed
class IRoleUpdate with _$IRoleUpdate {
  const factory IRoleUpdate({
    required String name,
    required String description,
  }) = _IRoleUpdate;

  factory IRoleUpdate.fromJson(Map<String, dynamic> json) => _$IRoleUpdateFromJson(json);
}
