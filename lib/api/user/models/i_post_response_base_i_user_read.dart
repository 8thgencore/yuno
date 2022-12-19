import 'package:freezed_annotation/freezed_annotation.dart';
import 'i_user_read.dart';

part 'i_post_response_base_i_user_read.freezed.dart';
part 'i_post_response_base_i_user_read.g.dart';

@freezed
class IPostResponseBaseIUserRead with _$IPostResponseBaseIUserRead {
  const factory IPostResponseBaseIUserRead({
    @JsonKey(defaultValue: 'Data created correctly')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required IUserRead data,
  }) = _IPostResponseBaseIUserRead;
  
  factory IPostResponseBaseIUserRead.fromJson(Map<String, dynamic> json) => _$IPostResponseBaseIUserReadFromJson(json);
}
