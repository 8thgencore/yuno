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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IRoleUpdate _$IRoleUpdateFromJson(Map<String, dynamic> json) {
  return _IRoleUpdate.fromJson(json);
}

/// @nodoc
mixin _$IRoleUpdate {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this IRoleUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IRoleUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of IRoleUpdate
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$IRoleUpdateImplCopyWith<$Res>
    implements $IRoleUpdateCopyWith<$Res> {
  factory _$$IRoleUpdateImplCopyWith(
          _$IRoleUpdateImpl value, $Res Function(_$IRoleUpdateImpl) then) =
      __$$IRoleUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$IRoleUpdateImplCopyWithImpl<$Res>
    extends _$IRoleUpdateCopyWithImpl<$Res, _$IRoleUpdateImpl>
    implements _$$IRoleUpdateImplCopyWith<$Res> {
  __$$IRoleUpdateImplCopyWithImpl(
      _$IRoleUpdateImpl _value, $Res Function(_$IRoleUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IRoleUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$IRoleUpdateImpl(
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
class _$IRoleUpdateImpl implements _IRoleUpdate {
  const _$IRoleUpdateImpl({required this.name, required this.description});

  factory _$IRoleUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$IRoleUpdateImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'IRoleUpdate(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IRoleUpdateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of IRoleUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IRoleUpdateImplCopyWith<_$IRoleUpdateImpl> get copyWith =>
      __$$IRoleUpdateImplCopyWithImpl<_$IRoleUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IRoleUpdateImplToJson(
      this,
    );
  }
}

abstract class _IRoleUpdate implements IRoleUpdate {
  const factory _IRoleUpdate(
      {required final String name,
      required final String description}) = _$IRoleUpdateImpl;

  factory _IRoleUpdate.fromJson(Map<String, dynamic> json) =
      _$IRoleUpdateImpl.fromJson;

  @override
  String get name;
  @override
  String get description;

  /// Create a copy of IRoleUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IRoleUpdateImplCopyWith<_$IRoleUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
