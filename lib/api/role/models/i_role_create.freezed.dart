// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_role_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IRoleCreate _$IRoleCreateFromJson(Map<String, dynamic> json) {
  return _IRoleCreate.fromJson(json);
}

/// @nodoc
mixin _$IRoleCreate {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this IRoleCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IRoleCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IRoleCreateCopyWith<IRoleCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IRoleCreateCopyWith<$Res> {
  factory $IRoleCreateCopyWith(
          IRoleCreate value, $Res Function(IRoleCreate) then) =
      _$IRoleCreateCopyWithImpl<$Res, IRoleCreate>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$IRoleCreateCopyWithImpl<$Res, $Val extends IRoleCreate>
    implements $IRoleCreateCopyWith<$Res> {
  _$IRoleCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IRoleCreate
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
abstract class _$$IRoleCreateImplCopyWith<$Res>
    implements $IRoleCreateCopyWith<$Res> {
  factory _$$IRoleCreateImplCopyWith(
          _$IRoleCreateImpl value, $Res Function(_$IRoleCreateImpl) then) =
      __$$IRoleCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$IRoleCreateImplCopyWithImpl<$Res>
    extends _$IRoleCreateCopyWithImpl<$Res, _$IRoleCreateImpl>
    implements _$$IRoleCreateImplCopyWith<$Res> {
  __$$IRoleCreateImplCopyWithImpl(
      _$IRoleCreateImpl _value, $Res Function(_$IRoleCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IRoleCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$IRoleCreateImpl(
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
class _$IRoleCreateImpl implements _IRoleCreate {
  const _$IRoleCreateImpl({required this.name, required this.description});

  factory _$IRoleCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$IRoleCreateImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'IRoleCreate(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IRoleCreateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of IRoleCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IRoleCreateImplCopyWith<_$IRoleCreateImpl> get copyWith =>
      __$$IRoleCreateImplCopyWithImpl<_$IRoleCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IRoleCreateImplToJson(
      this,
    );
  }
}

abstract class _IRoleCreate implements IRoleCreate {
  const factory _IRoleCreate(
      {required final String name,
      required final String description}) = _$IRoleCreateImpl;

  factory _IRoleCreate.fromJson(Map<String, dynamic> json) =
      _$IRoleCreateImpl.fromJson;

  @override
  String get name;
  @override
  String get description;

  /// Create a copy of IRoleCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IRoleCreateImplCopyWith<_$IRoleCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
