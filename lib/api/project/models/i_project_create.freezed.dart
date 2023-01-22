// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_project_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IProjectCreate _$IProjectCreateFromJson(Map<String, dynamic> json) {
  return _IProjectCreate.fromJson(json);
}

/// @nodoc
mixin _$IProjectCreate {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IProjectCreateCopyWith<IProjectCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IProjectCreateCopyWith<$Res> {
  factory $IProjectCreateCopyWith(
          IProjectCreate value, $Res Function(IProjectCreate) then) =
      _$IProjectCreateCopyWithImpl<$Res, IProjectCreate>;
  @useResult
  $Res call({String name, String description, String link});
}

/// @nodoc
class _$IProjectCreateCopyWithImpl<$Res, $Val extends IProjectCreate>
    implements $IProjectCreateCopyWith<$Res> {
  _$IProjectCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IProjectCreateCopyWith<$Res>
    implements $IProjectCreateCopyWith<$Res> {
  factory _$$_IProjectCreateCopyWith(
          _$_IProjectCreate value, $Res Function(_$_IProjectCreate) then) =
      __$$_IProjectCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String link});
}

/// @nodoc
class __$$_IProjectCreateCopyWithImpl<$Res>
    extends _$IProjectCreateCopyWithImpl<$Res, _$_IProjectCreate>
    implements _$$_IProjectCreateCopyWith<$Res> {
  __$$_IProjectCreateCopyWithImpl(
      _$_IProjectCreate _value, $Res Function(_$_IProjectCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? link = null,
  }) {
    return _then(_$_IProjectCreate(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IProjectCreate implements _IProjectCreate {
  const _$_IProjectCreate(
      {required this.name, required this.description, required this.link});

  factory _$_IProjectCreate.fromJson(Map<String, dynamic> json) =>
      _$$_IProjectCreateFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String link;

  @override
  String toString() {
    return 'IProjectCreate(name: $name, description: $description, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IProjectCreate &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IProjectCreateCopyWith<_$_IProjectCreate> get copyWith =>
      __$$_IProjectCreateCopyWithImpl<_$_IProjectCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IProjectCreateToJson(
      this,
    );
  }
}

abstract class _IProjectCreate implements IProjectCreate {
  const factory _IProjectCreate(
      {required final String name,
      required final String description,
      required final String link}) = _$_IProjectCreate;

  factory _IProjectCreate.fromJson(Map<String, dynamic> json) =
      _$_IProjectCreate.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$_IProjectCreateCopyWith<_$_IProjectCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
