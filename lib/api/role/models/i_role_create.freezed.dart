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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IRoleCreate _$IRoleCreateFromJson(Map<String, dynamic> json) {
  return _IRoleCreate.fromJson(json);
}

/// @nodoc
mixin _$IRoleCreate {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IRoleCreateCopyWith<IRoleCreate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IRoleCreateCopyWith<$Res> {
  factory $IRoleCreateCopyWith(IRoleCreate value, $Res Function(IRoleCreate) then) =
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
abstract class _$$_IRoleCreateCopyWith<$Res> implements $IRoleCreateCopyWith<$Res> {
  factory _$$_IRoleCreateCopyWith(_$_IRoleCreate value, $Res Function(_$_IRoleCreate) then) =
      __$$_IRoleCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$_IRoleCreateCopyWithImpl<$Res> extends _$IRoleCreateCopyWithImpl<$Res, _$_IRoleCreate>
    implements _$$_IRoleCreateCopyWith<$Res> {
  __$$_IRoleCreateCopyWithImpl(_$_IRoleCreate _value, $Res Function(_$_IRoleCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_IRoleCreate(
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
class _$_IRoleCreate implements _IRoleCreate {
  const _$_IRoleCreate({required this.name, required this.description});

  factory _$_IRoleCreate.fromJson(Map<String, dynamic> json) => _$$_IRoleCreateFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'IRoleCreate(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IRoleCreate &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IRoleCreateCopyWith<_$_IRoleCreate> get copyWith =>
      __$$_IRoleCreateCopyWithImpl<_$_IRoleCreate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IRoleCreateToJson(
      this,
    );
  }
}

abstract class _IRoleCreate implements IRoleCreate {
  const factory _IRoleCreate({required final String name, required final String description}) =
      _$_IRoleCreate;

  factory _IRoleCreate.fromJson(Map<String, dynamic> json) = _$_IRoleCreate.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_IRoleCreateCopyWith<_$_IRoleCreate> get copyWith => throw _privateConstructorUsedError;
}
