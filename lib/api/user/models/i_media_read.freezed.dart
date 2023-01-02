// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_media_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IMediaRead _$IMediaReadFromJson(Map<String, dynamic> json) {
  return _IMediaRead.fromJson(json);
}

/// @nodoc
mixin _$IMediaRead {
  Object get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IMediaReadCopyWith<IMediaRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IMediaReadCopyWith<$Res> {
  factory $IMediaReadCopyWith(
          IMediaRead value, $Res Function(IMediaRead) then) =
      _$IMediaReadCopyWithImpl<$Res, IMediaRead>;
  @useResult
  $Res call(
      {Object id,
      String? title,
      String? description,
      String? path,
      String? link});
}

/// @nodoc
class _$IMediaReadCopyWithImpl<$Res, $Val extends IMediaRead>
    implements $IMediaReadCopyWith<$Res> {
  _$IMediaReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? path = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id ? _value.id : id,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IMediaReadCopyWith<$Res>
    implements $IMediaReadCopyWith<$Res> {
  factory _$$_IMediaReadCopyWith(
          _$_IMediaRead value, $Res Function(_$_IMediaRead) then) =
      __$$_IMediaReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Object id,
      String? title,
      String? description,
      String? path,
      String? link});
}

/// @nodoc
class __$$_IMediaReadCopyWithImpl<$Res>
    extends _$IMediaReadCopyWithImpl<$Res, _$_IMediaRead>
    implements _$$_IMediaReadCopyWith<$Res> {
  __$$_IMediaReadCopyWithImpl(
      _$_IMediaRead _value, $Res Function(_$_IMediaRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? path = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_IMediaRead(
      id: null == id ? _value.id : id,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IMediaRead implements _IMediaRead {
  const _$_IMediaRead(
      {required this.id, this.title, this.description, this.path, this.link});

  factory _$_IMediaRead.fromJson(Map<String, dynamic> json) =>
      _$$_IMediaReadFromJson(json);

  @override
  final Object id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? path;
  @override
  final String? link;

  @override
  String toString() {
    return 'IMediaRead(id: $id, title: $title, description: $description, path: $path, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IMediaRead &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(id), title, description, path, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IMediaReadCopyWith<_$_IMediaRead> get copyWith =>
      __$$_IMediaReadCopyWithImpl<_$_IMediaRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IMediaReadToJson(
      this,
    );
  }
}

abstract class _IMediaRead implements IMediaRead {
  const factory _IMediaRead(
      {required final Object id,
      final String? title,
      final String? description,
      final String? path,
      final String? link}) = _$_IMediaRead;

  factory _IMediaRead.fromJson(Map<String, dynamic> json) =
      _$_IMediaRead.fromJson;

  @override
  Object get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get path;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_IMediaReadCopyWith<_$_IMediaRead> get copyWith =>
      throw _privateConstructorUsedError;
}
