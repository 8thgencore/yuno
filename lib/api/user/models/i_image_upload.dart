import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_image_upload.freezed.dart';
part 'i_image_upload.g.dart';

@Freezed()
class IImageUpload with _$IImageUpload {
  const factory IImageUpload({
    String? title,
    String? description,
  }) = _IImageUpload;
  
  factory IImageUpload.fromJson(Map<String, dynamic> json) => _$IImageUploadFromJson(json);
}
