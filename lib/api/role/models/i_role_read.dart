import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_role_read.freezed.dart';
part 'i_role_read.g.dart';

@freezed
class IRoleRead with _$IRoleRead {
  const factory IRoleRead({
    required String name,
    required String description,
    required String id,
  }) = _IRoleRead;
  
  factory IRoleRead.fromJson(Map<String, dynamic> json) => _$IRoleReadFromJson(json);
}
