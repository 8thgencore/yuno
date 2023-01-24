import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_project_create.freezed.dart';
part 'i_project_create.g.dart';

@Freezed()
class IProject with _$IProject {
  const factory IProject({
    required String name,
    required String description,
    required String link,
  }) = _IProject;

  factory IProject.fromJson(Map<String, dynamic> json) => _$IProjectFromJson(json);
}
