import 'package:json_annotation/json_annotation.dart';

part 'http_validation_error.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class HTTPValidationError {
  HTTPValidationError(this.detail);

  final dynamic detail;

  factory HTTPValidationError.fromJson(final Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);

  Map<String, dynamic> toJson() => _$HTTPValidationErrorToJson(this);
}
