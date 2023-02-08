// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_image_upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IImageUpload _$IImageUploadFromJson(Map<String, dynamic> json) {
  return _IImageUpload.fromJson(json);
}

/// @nodoc
mixin _$IImageUpload {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IImageUploadCopyWith<IImageUpload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IImageUploadCopyWith<$Res> {
  factory $IImageUploadCopyWith(IImageUpload value, $Res Function(IImageUpload) then) =
      _$IImageUploadCopyWithImpl<$Res, IImageUpload>;
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class _$IImageUploadCopyWithImpl<$Res, $Val extends IImageUpload>
    implements $IImageUploadCopyWith<$Res> {
  _$IImageUploadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IImageUploadCopyWith<$Res> implements $IImageUploadCopyWith<$Res> {
  factory _$$_IImageUploadCopyWith(_$_IImageUpload value, $Res Function(_$_IImageUpload) then) =
      __$$_IImageUploadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description});
}

/// @nodoc
class __$$_IImageUploadCopyWithImpl<$Res> extends _$IImageUploadCopyWithImpl<$Res, _$_IImageUpload>
    implements _$$_IImageUploadCopyWith<$Res> {
  __$$_IImageUploadCopyWithImpl(_$_IImageUpload _value, $Res Function(_$_IImageUpload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_IImageUpload(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IImageUpload implements _IImageUpload {
  const _$_IImageUpload({this.title, this.description});

  factory _$_IImageUpload.fromJson(Map<String, dynamic> json) => _$$_IImageUploadFromJson(json);

  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'IImageUpload(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IImageUpload &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) || other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IImageUploadCopyWith<_$_IImageUpload> get copyWith =>
      __$$_IImageUploadCopyWithImpl<_$_IImageUpload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IImageUploadToJson(
      this,
    );
  }
}

abstract class _IImageUpload implements IImageUpload {
  const factory _IImageUpload({final String? title, final String? description}) = _$_IImageUpload;

  factory _IImageUpload.fromJson(Map<String, dynamic> json) = _$_IImageUpload.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_IImageUploadCopyWith<_$_IImageUpload> get copyWith => throw _privateConstructorUsedError;
}
