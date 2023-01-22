import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_project_update.freezed.dart';
part 'i_project_update.g.dart';

@Freezed()
class IProjectUpdate with _$IProjectUpdate {
  const factory IProjectUpdate({
    required String name,
    required String description,
    required String link,
  }) = _IProjectUpdate;
  
  factory IProjectUpdate.fromJson(Map<String, dynamic> json) => _$IProjectUpdateFromJson(json);
}
