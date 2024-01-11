// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectEditEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$StartedEventImpl implements _StartedEvent {
  const _$StartedEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectEditEvent.started(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements ProjectEditEvent {
  const factory _StartedEvent(final String id) = _$StartedEventImpl;

  String get id;
}

/// @nodoc

class _$NameChangedEventImpl implements _NameChangedEvent {
  const _$NameChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProjectEditEvent.nameChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChangedEvent implements ProjectEditEvent {
  const factory _NameChangedEvent(final String text) = _$NameChangedEventImpl;

  String get text;
}

/// @nodoc

class _$DescriptionChangedEventImpl implements _DescriptionChangedEvent {
  const _$DescriptionChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProjectEditEvent.descriptionChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChangedEvent implements ProjectEditEvent {
  const factory _DescriptionChangedEvent(final String text) = _$DescriptionChangedEventImpl;

  String get text;
}

/// @nodoc

class _$SavedEventImpl implements _SavedEvent {
  const _$SavedEventImpl();

  @override
  String toString() {
    return 'ProjectEditEvent.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _SavedEvent implements ProjectEditEvent {
  const factory _SavedEvent() = _$SavedEventImpl;
}

/// @nodoc

class _$UpdatedEventImpl implements _UpdatedEvent {
  const _$UpdatedEventImpl();

  @override
  String toString() {
    return 'ProjectEditEvent.updated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdatedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DescriptionChangedEvent value) descriptionChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DescriptionChangedEvent value)? descriptionChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _UpdatedEvent implements ProjectEditEvent {
  const factory _UpdatedEvent() = _$UpdatedEventImpl;
}

/// @nodoc
mixin _$ProjectEditState {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ProjectEditStatus get status => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectEditStateCopyWith<ProjectEditState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEditStateCopyWith<$Res> {
  factory $ProjectEditStateCopyWith(ProjectEditState value, $Res Function(ProjectEditState) then) =
      _$ProjectEditStateCopyWithImpl<$Res, ProjectEditState>;
  @useResult
  $Res call(
      {String id, String name, String description, ProjectEditStatus status, String? serverError});
}

/// @nodoc
class _$ProjectEditStateCopyWithImpl<$Res, $Val extends ProjectEditState>
    implements $ProjectEditStateCopyWith<$Res> {
  _$ProjectEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? status = null,
    Object? serverError = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectEditStatus,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectEditStateImplCopyWith<$Res> implements $ProjectEditStateCopyWith<$Res> {
  factory _$$ProjectEditStateImplCopyWith(
          _$ProjectEditStateImpl value, $Res Function(_$ProjectEditStateImpl) then) =
      __$$ProjectEditStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String description, ProjectEditStatus status, String? serverError});
}

/// @nodoc
class __$$ProjectEditStateImplCopyWithImpl<$Res>
    extends _$ProjectEditStateCopyWithImpl<$Res, _$ProjectEditStateImpl>
    implements _$$ProjectEditStateImplCopyWith<$Res> {
  __$$ProjectEditStateImplCopyWithImpl(
      _$ProjectEditStateImpl _value, $Res Function(_$ProjectEditStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? status = null,
    Object? serverError = freezed,
  }) {
    return _then(_$ProjectEditStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectEditStatus,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProjectEditStateImpl implements _ProjectEditState {
  const _$ProjectEditStateImpl(
      {required this.id,
      required this.name,
      required this.description,
      this.status = ProjectEditStatus.initial,
      this.serverError});

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey()
  final ProjectEditStatus status;
  @override
  final String? serverError;

  @override
  String toString() {
    return 'ProjectEditState(id: $id, name: $name, description: $description, status: $status, serverError: $serverError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEditStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.serverError, serverError) || other.serverError == serverError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, status, serverError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEditStateImplCopyWith<_$ProjectEditStateImpl> get copyWith =>
      __$$ProjectEditStateImplCopyWithImpl<_$ProjectEditStateImpl>(this, _$identity);
}

abstract class _ProjectEditState implements ProjectEditState {
  const factory _ProjectEditState(
      {required final String id,
      required final String name,
      required final String description,
      final ProjectEditStatus status,
      final String? serverError}) = _$ProjectEditStateImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  ProjectEditStatus get status;
  @override
  String? get serverError;
  @override
  @JsonKey(ignore: true)
  _$$ProjectEditStateImplCopyWith<_$ProjectEditStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
