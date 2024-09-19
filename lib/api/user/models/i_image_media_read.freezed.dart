// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_image_media_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IImageMediaRead _$IImageMediaReadFromJson(Map<String, dynamic> json) {
  return _IImageMediaRead.fromJson(json);
}

/// @nodoc
mixin _$IImageMediaRead {
  @JsonKey(name: 'file_format')
  String get fileFormat => throw _privateConstructorUsedError;
  IMediaRead get media => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  /// Serializes this IImageMediaRead to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IImageMediaRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IImageMediaReadCopyWith<IImageMediaRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IImageMediaReadCopyWith<$Res> {
  factory $IImageMediaReadCopyWith(
          IImageMediaRead value, $Res Function(IImageMediaRead) then) =
      _$IImageMediaReadCopyWithImpl<$Res, IImageMediaRead>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_format') String fileFormat,
      IMediaRead media,
      int? width,
      int? height});

  $IMediaReadCopyWith<$Res> get media;
}

/// @nodoc
class _$IImageMediaReadCopyWithImpl<$Res, $Val extends IImageMediaRead>
    implements $IImageMediaReadCopyWith<$Res> {
  _$IImageMediaReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IImageMediaRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileFormat = null,
    Object? media = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      fileFormat: null == fileFormat
          ? _value.fileFormat
          : fileFormat // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as IMediaRead,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of IImageMediaRead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IMediaReadCopyWith<$Res> get media {
    return $IMediaReadCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IImageMediaReadImplCopyWith<$Res>
    implements $IImageMediaReadCopyWith<$Res> {
  factory _$$IImageMediaReadImplCopyWith(_$IImageMediaReadImpl value,
          $Res Function(_$IImageMediaReadImpl) then) =
      __$$IImageMediaReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_format') String fileFormat,
      IMediaRead media,
      int? width,
      int? height});

  @override
  $IMediaReadCopyWith<$Res> get media;
}

/// @nodoc
class __$$IImageMediaReadImplCopyWithImpl<$Res>
    extends _$IImageMediaReadCopyWithImpl<$Res, _$IImageMediaReadImpl>
    implements _$$IImageMediaReadImplCopyWith<$Res> {
  __$$IImageMediaReadImplCopyWithImpl(
      _$IImageMediaReadImpl _value, $Res Function(_$IImageMediaReadImpl) _then)
      : super(_value, _then);

  /// Create a copy of IImageMediaRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileFormat = null,
    Object? media = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$IImageMediaReadImpl(
      fileFormat: null == fileFormat
          ? _value.fileFormat
          : fileFormat // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as IMediaRead,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IImageMediaReadImpl implements _IImageMediaRead {
  const _$IImageMediaReadImpl(
      {@JsonKey(name: 'file_format') required this.fileFormat,
      required this.media,
      this.width,
      this.height});

  factory _$IImageMediaReadImpl.fromJson(Map<String, dynamic> json) =>
      _$$IImageMediaReadImplFromJson(json);

  @override
  @JsonKey(name: 'file_format')
  final String fileFormat;
  @override
  final IMediaRead media;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'IImageMediaRead(fileFormat: $fileFormat, media: $media, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IImageMediaReadImpl &&
            (identical(other.fileFormat, fileFormat) ||
                other.fileFormat == fileFormat) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fileFormat, media, width, height);

  /// Create a copy of IImageMediaRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IImageMediaReadImplCopyWith<_$IImageMediaReadImpl> get copyWith =>
      __$$IImageMediaReadImplCopyWithImpl<_$IImageMediaReadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IImageMediaReadImplToJson(
      this,
    );
  }
}

abstract class _IImageMediaRead implements IImageMediaRead {
  const factory _IImageMediaRead(
      {@JsonKey(name: 'file_format') required final String fileFormat,
      required final IMediaRead media,
      final int? width,
      final int? height}) = _$IImageMediaReadImpl;

  factory _IImageMediaRead.fromJson(Map<String, dynamic> json) =
      _$IImageMediaReadImpl.fromJson;

  @override
  @JsonKey(name: 'file_format')
  String get fileFormat;
  @override
  IMediaRead get media;
  @override
  int? get width;
  @override
  int? get height;

  /// Create a copy of IImageMediaRead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IImageMediaReadImplCopyWith<_$IImageMediaReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
