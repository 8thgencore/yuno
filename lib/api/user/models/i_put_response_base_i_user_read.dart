import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_user_read.dart';

part 'i_put_response_base_i_user_read.freezed.dart';
part 'i_put_response_base_i_user_read.g.dart';

@freezed
class IPutResponseBaseIUserRead with _$IPutResponseBaseIUserRead {
  const factory IPutResponseBaseIUserRead({
    @JsonKey(defaultValue: 'Data updated correctly')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required IUserRead data,
  }) = _IPutResponseBaseIUserRead;
  
  factory IPutResponseBaseIUserRead.fromJson(Map<String, dynamic> json) => _$IPutResponseBaseIUserReadFromJson(json);
}
