import 'package:freezed_annotation/freezed_annotation.dart';

import 'token.dart';

part 'i_post_response_base_token.freezed.dart';
part 'i_post_response_base_token.g.dart';

@freezed
class IPostResponseBaseToken with _$IPostResponseBaseToken {
  const factory IPostResponseBaseToken({
    @JsonKey(defaultValue: 'Data created correctly')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required Token data,
  }) = _IPostResponseBaseToken;
  
  factory IPostResponseBaseToken.fromJson(Map<String, dynamic> json) => _$IPostResponseBaseTokenFromJson(json);
}
