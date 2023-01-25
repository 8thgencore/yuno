import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_user_read.dart';

part 'i_get_response_base_i_user_read.freezed.dart';
part 'i_get_response_base_i_user_read.g.dart';

@freezed
class IGetResponseBaseIUserRead with _$IGetResponseBaseIUserRead {
  const factory IGetResponseBaseIUserRead({
    @JsonKey(defaultValue: 'Data got correctly')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required IUserRead data,
  }) = _IGetResponseBaseIUserRead;
  
  factory IGetResponseBaseIUserRead.fromJson(Map<String, dynamic> json) => _$IGetResponseBaseIUserReadFromJson(json);
}
