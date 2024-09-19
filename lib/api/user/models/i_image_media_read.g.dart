// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_image_media_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IImageMediaReadImpl _$$IImageMediaReadImplFromJson(
        Map<String, dynamic> json) =>
    _$IImageMediaReadImpl(
      fileFormat: json['file_format'] as String,
      media: IMediaRead.fromJson(json['media'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$IImageMediaReadImplToJson(
        _$IImageMediaReadImpl instance) =>
    <String, dynamic>{
      'file_format': instance.fileFormat,
      'media': instance.media,
      'width': instance.width,
      'height': instance.height,
    };
