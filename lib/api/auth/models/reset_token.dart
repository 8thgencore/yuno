import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_token.freezed.dart';
part 'reset_token.g.dart';

@freezed
class ResetToken with _$ResetToken {
  const factory ResetToken({
    @JsonKey(name: 'reset_token') required String resetToken,
  }) = _ResetToken;

  factory ResetToken.fromJson(Map<String, dynamic> json) => _$ResetTokenFromJson(json);
}
