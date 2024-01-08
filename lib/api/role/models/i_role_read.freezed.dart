// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_role_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IRoleRead _$IRoleReadFromJson(Map<String, dynamic> json) {
  return _IRoleRead.fromJson(json);
}

/// @nodoc
mixin _$IRoleRead {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IRoleReadCopyWith<IRoleRead> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IRoleReadCopyWith<$Res> {
  factory $IRoleReadCopyWith(IRoleRead value, $Res Function(IRoleRead) then) =
      _$IRoleReadCopyWithImpl<$Res, IRoleRead>;
  @useResult
  $Res call({String name, String description, String id});
}

/// @nodoc
class _$IRoleReadCopyWithImpl<$Res, $Val extends IRoleRead> implements $IRoleReadCopyWith<$Res> {
  _$IRoleReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IRoleReadImplCopyWith<$Res> implements $IRoleReadCopyWith<$Res> {
  factory _$$IRoleReadImplCopyWith(_$IRoleReadImpl value, $Res Function(_$IRoleReadImpl) then) =
      __$$IRoleReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String id});
}

/// @nodoc
class __$$IRoleReadImplCopyWithImpl<$Res> extends _$IRoleReadCopyWithImpl<$Res, _$IRoleReadImpl>
    implements _$$IRoleReadImplCopyWith<$Res> {
  __$$IRoleReadImplCopyWithImpl(_$IRoleReadImpl _value, $Res Function(_$IRoleReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? id = null,
  }) {
    return _then(_$IRoleReadImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IRoleReadImpl implements _IRoleRead {
  const _$IRoleReadImpl({required this.name, required this.description, required this.id});

  factory _$IRoleReadImpl.fromJson(Map<String, dynamic> json) => _$$IRoleReadImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String id;

  @override
  String toString() {
    return 'IRoleRead(name: $name, description: $description, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IRoleReadImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IRoleReadImplCopyWith<_$IRoleReadImpl> get copyWith =>
      __$$IRoleReadImplCopyWithImpl<_$IRoleReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IRoleReadImplToJson(
      this,
    );
  }
}

abstract class _IRoleRead implements IRoleRead {
  const factory _IRoleRead(
      {required final String name,
      required final String description,
      required final String id}) = _$IRoleReadImpl;

  factory _IRoleRead.fromJson(Map<String, dynamic> json) = _$IRoleReadImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$IRoleReadImplCopyWith<_$IRoleReadImpl> get copyWith => throw _privateConstructorUsedError;
}
