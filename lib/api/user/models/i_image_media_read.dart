import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_media_read.dart';

part 'i_image_media_read.freezed.dart';

part 'i_image_media_read.g.dart';

@Freezed()
class IImageMediaRead with _$IImageMediaRead {
  const factory IImageMediaRead({
    @JsonKey(name: 'file_format')
    required String fileFormat,
    required int width,
    required int height,
    required IMediaRead media,
  }) = _IImageMediaRead;

  factory IImageMediaRead.fromJson(Map<String, dynamic> json) => _$IImageMediaReadFromJson(json);
}
