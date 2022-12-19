// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_role_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IRoleUpdate _$IRoleUpdateFromJson(Map<String, dynamic> json) {
  return _IRoleUpdate.fromJson(json);
}

/// @nodoc
mixin _$IRoleUpdate {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IRoleUpdateCopyWith<IRoleUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IRoleUpdateCopyWith<$Res> {
  factory $IRoleUpdateCopyWith(
          IRoleUpdate value, $Res Function(IRoleUpdate) then) =
      _$IRoleUpdateCopyWithImpl<$Res, IRoleUpdate>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$IRoleUpdateCopyWithImpl<$Res, $Val extends IRoleUpdate>
    implements $IRoleUpdateCopyWith<$Res> {
  _$IRoleUpdateCopyWithImpl(this._value, this._then);

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
abstract class _$$_IRoleUpdateCopyWith<$Res>
    implements $IRoleUpdateCopyWith<$Res> {
  factory _$$_IRoleUpdateCopyWith(
          _$_IRoleUpdate value, $Res Function(_$_IRoleUpdate) then) =
      __$$_IRoleUpdateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$_IRoleUpdateCopyWithImpl<$Res>
    extends _$IRoleUpdateCopyWithImpl<$Res, _$_IRoleUpdate>
    implements _$$_IRoleUpdateCopyWith<$Res> {
  __$$_IRoleUpdateCopyWithImpl(
      _$_IRoleUpdate _value, $Res Function(_$_IRoleUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_IRoleUpdate(
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
class _$_IRoleUpdate implements _IRoleUpdate {
  const _$_IRoleUpdate({required this.name, required this.description});

  factory _$_IRoleUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_IRoleUpdateFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'IRoleUpdate(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IRoleUpdate &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IRoleUpdateCopyWith<_$_IRoleUpdate> get copyWith =>
      __$$_IRoleUpdateCopyWithImpl<_$_IRoleUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IRoleUpdateToJson(
      this,
    );
  }
}

abstract class _IRoleUpdate implements IRoleUpdate {
  const factory _IRoleUpdate(
      {required final String name,
      required final String description}) = _$_IRoleUpdate;

  factory _IRoleUpdate.fromJson(Map<String, dynamic> json) =
      _$_IRoleUpdate.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_IRoleUpdateCopyWith<_$_IRoleUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
