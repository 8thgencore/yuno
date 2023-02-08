// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_image_media_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IImageMediaRead _$$_IImageMediaReadFromJson(Map<String, dynamic> json) => _$_IImageMediaRead(
      fileFormat: json['file_format'] as String,
      media: IMediaRead.fromJson(json['media'] as Map<String, dynamic>),
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$$_IImageMediaReadToJson(_$_IImageMediaRead instance) => <String, dynamic>{
      'file_format': instance.fileFormat,
      'media': instance.media,
      'width': instance.width,
      'height': instance.height,
    };
