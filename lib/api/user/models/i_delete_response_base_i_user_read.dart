import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/user/models/i_user_read.dart';

part 'i_delete_response_base_i_user_read.freezed.dart';
part 'i_delete_response_base_i_user_read.g.dart';

@freezed
class IDeleteResponseBaseIUserRead with _$IDeleteResponseBaseIUserRead {
  const factory IDeleteResponseBaseIUserRead({
    @JsonKey(defaultValue: 'Data deleted correctly')
    required String message,
    @JsonKey(defaultValue: {})
    required Object meta,
    required IUserRead data,
  }) = _IDeleteResponseBaseIUserRead;
  
  factory IDeleteResponseBaseIUserRead.fromJson(Map<String, dynamic> json) => _$IDeleteResponseBaseIUserReadFromJson(json);
}
