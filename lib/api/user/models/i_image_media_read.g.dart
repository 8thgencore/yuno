// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_image_media_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IImageMediaRead _$$_IImageMediaReadFromJson(Map<String, dynamic> json) =>
    _$_IImageMediaRead(
      fileFormat: json['file_format'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      media: IMediaRead.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IImageMediaReadToJson(_$_IImageMediaRead instance) =>
    <String, dynamic>{
      'file_format': instance.fileFormat,
      'width': instance.width,
      'height': instance.height,
      'media': instance.media,
    };
