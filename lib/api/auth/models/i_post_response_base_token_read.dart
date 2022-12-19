import 'package:freezed_annotation/freezed_annotation.dart';
import 'token_read.dart';

part 'i_post_response_base_token_read.freezed.dart';
part 'i_post_response_base_token_read.g.dart';

@freezed
class IPostResponseBaseTokenRead with _$IPostResponseBaseTokenRead {
  const factory IPostResponseBaseTokenRead({
    @JsonKey(defaultValue: 'Data created correctly')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required TokenRead data,
  }) = _IPostResponseBaseTokenRead;
  
  factory IPostResponseBaseTokenRead.fromJson(Map<String, dynamic> json) => _$IPostResponseBaseTokenReadFromJson(json);
}
