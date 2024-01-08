// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_project_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IProjectUpdate _$IProjectUpdateFromJson(Map<String, dynamic> json) {
  return _IProjectUpdate.fromJson(json);
}

/// @nodoc
mixin _$IProjectUpdate {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IProjectUpdateCopyWith<IProjectUpdate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IProjectUpdateCopyWith<$Res> {
  factory $IProjectUpdateCopyWith(IProjectUpdate value, $Res Function(IProjectUpdate) then) =
      _$IProjectUpdateCopyWithImpl<$Res, IProjectUpdate>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$IProjectUpdateCopyWithImpl<$Res, $Val extends IProjectUpdate>
    implements $IProjectUpdateCopyWith<$Res> {
  _$IProjectUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IProjectUpdateImplCopyWith<$Res> implements $IProjectUpdateCopyWith<$Res> {
  factory _$$IProjectUpdateImplCopyWith(
          _$IProjectUpdateImpl value, $Res Function(_$IProjectUpdateImpl) then) =
      __$$IProjectUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$IProjectUpdateImplCopyWithImpl<$Res>
    extends _$IProjectUpdateCopyWithImpl<$Res, _$IProjectUpdateImpl>
    implements _$$IProjectUpdateImplCopyWith<$Res> {
  __$$IProjectUpdateImplCopyWithImpl(
      _$IProjectUpdateImpl _value, $Res Function(_$IProjectUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$IProjectUpdateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IProjectUpdateImpl implements _IProjectUpdate {
  const _$IProjectUpdateImpl({required this.name, required this.description});

  factory _$IProjectUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$IProjectUpdateImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'IProjectUpdate(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IProjectUpdateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IProjectUpdateImplCopyWith<_$IProjectUpdateImpl> get copyWith =>
      __$$IProjectUpdateImplCopyWithImpl<_$IProjectUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IProjectUpdateImplToJson(
      this,
    );
  }
}

abstract class _IProjectUpdate implements IProjectUpdate {
  const factory _IProjectUpdate({required final String name, required final String description}) =
      _$IProjectUpdateImpl;

  factory _IProjectUpdate.fromJson(Map<String, dynamic> json) = _$IProjectUpdateImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$IProjectUpdateImplCopyWith<_$IProjectUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
