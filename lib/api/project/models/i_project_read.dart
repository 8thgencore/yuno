import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_project_read.freezed.dart';
part 'i_project_read.g.dart';

@Freezed()
class IProjectRead with _$IProjectRead {
  const factory IProjectRead({
    required String name,
    required String description,
    required String link,
    required String id,
    @JsonKey(name: 'created_by_id') String? createdBy,
  }) = _IProjectRead;

  factory IProjectRead.fromJson(Map<String, dynamic> json) => _$IProjectReadFromJson(json);
}
