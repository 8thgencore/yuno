import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yuno/api/user/models/i_media_read.dart';

part 'i_image_media_read.freezed.dart';
part 'i_image_media_read.g.dart';

@Freezed()
class IImageMediaRead with _$IImageMediaRead {
  const factory IImageMediaRead({
    @JsonKey(name: 'file_format') required String fileFormat,
    required IMediaRead media,
    int? width,
    int? height,
  }) = _IImageMediaRead;

  factory IImageMediaRead.fromJson(Map<String, dynamic> json) => _$IImageMediaReadFromJson(json);
}
