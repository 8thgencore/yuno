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

IProject _$IProjectFromJson(Map<String, dynamic> json) {
  return _IProject.fromJson(json);
}

/// @nodoc
mixin _$IProject {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IProjectCopyWith<IProject> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IProjectCopyWith<$Res> {
  factory $IProjectCopyWith(IProject value, $Res Function(IProject) then) =
      _$IProjectCopyWithImpl<$Res, IProject>;
  @useResult
  $Res call({String name, String description, String link});
}

/// @nodoc
class _$IProjectCopyWithImpl<$Res, $Val extends IProject> implements $IProjectCopyWith<$Res> {
  _$IProjectCopyWithImpl(this._value, this._then);

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
abstract class _$$IProjectImplCopyWith<$Res> implements $IProjectCopyWith<$Res> {
  factory _$$IProjectImplCopyWith(_$IProjectImpl value, $Res Function(_$IProjectImpl) then) =
      __$$IProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String link});
}

/// @nodoc
class __$$IProjectImplCopyWithImpl<$Res> extends _$IProjectCopyWithImpl<$Res, _$IProjectImpl>
    implements _$$IProjectImplCopyWith<$Res> {
  __$$IProjectImplCopyWithImpl(_$IProjectImpl _value, $Res Function(_$IProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? link = null,
  }) {
    return _then(_$IProjectImpl(
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
class _$IProjectImpl implements _IProject {
  const _$IProjectImpl({required this.name, required this.description, required this.link});

  factory _$IProjectImpl.fromJson(Map<String, dynamic> json) => _$$IProjectImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String link;

  @override
  String toString() {
    return 'IProject(name: $name, description: $description, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IProjectImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IProjectImplCopyWith<_$IProjectImpl> get copyWith =>
      __$$IProjectImplCopyWithImpl<_$IProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IProjectImplToJson(
      this,
    );
  }
}

abstract class _IProject implements IProject {
  const factory _IProject(
      {required final String name,
      required final String description,
      required final String link}) = _$IProjectImpl;

  factory _IProject.fromJson(Map<String, dynamic> json) = _$IProjectImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$IProjectImplCopyWith<_$IProjectImpl> get copyWith => throw _privateConstructorUsedError;
}
