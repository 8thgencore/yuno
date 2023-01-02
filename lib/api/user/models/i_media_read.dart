import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_media_read.freezed.dart';
part 'i_media_read.g.dart';

@Freezed()
class IMediaRead with _$IMediaRead {
  const factory IMediaRead({
    required Object id,
    String? title,
    String? description,
    String? path,
    String? link,
  }) = _IMediaRead;
  
  factory IMediaRead.fromJson(Map<String, dynamic> json) => _$IMediaReadFromJson(json);
}
