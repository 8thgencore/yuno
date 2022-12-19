import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_validation_error.freezed.dart';
part 'http_validation_error.g.dart';

@freezed
class HTTPValidationError with _$HTTPValidationError {
  const factory HTTPValidationError({
    required dynamic detail,
  }) = _HTTPValidationError;
  
  factory HTTPValidationError.fromJson(Map<String, dynamic> json) => _$HTTPValidationErrorFromJson(json);
}
