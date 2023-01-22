import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_project_create.freezed.dart';
part 'i_project_create.g.dart';

@Freezed()
class IProjectCreate with _$IProjectCreate {
  const factory IProjectCreate({
    required String name,
    required String description,
    required String link,
  }) = _IProjectCreate;
  
  factory IProjectCreate.fromJson(Map<String, dynamic> json) => _$IProjectCreateFromJson(json);
}
