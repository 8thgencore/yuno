import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_read.freezed.dart';
part 'token_read.g.dart';

@freezed
class TokenRead with _$TokenRead {
  const factory TokenRead({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _TokenRead;

  factory TokenRead.fromJson(Map<String, dynamic> json) => _$TokenReadFromJson(json);
}
