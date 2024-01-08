// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEditEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$StartedEventImpl implements _StartedEvent {
  const _$StartedEventImpl({required this.id, required this.projectId});

  @override
  final String id;
  @override
  final String projectId;

  @override
  String toString() {
    return 'TaskEditEvent.started(id: $id, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) || other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, projectId);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
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
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
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
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
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

abstract class _StartedEvent implements TaskEditEvent {
  const factory _StartedEvent({required final String id, required final String projectId}) =
      _$StartedEventImpl;

  String get id;
  String get projectId;
}

/// @nodoc

class _$NameChangedEventImpl implements _NameChangedEvent {
  const _$NameChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'TaskEditEvent.nameChanged(text: $text)';
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
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
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
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
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
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
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

abstract class _NameChangedEvent implements TaskEditEvent {
  const factory _NameChangedEvent(final String text) = _$NameChangedEventImpl;

  String get text;
}

/// @nodoc

class _$DeadlineChangedEventImpl implements _DeadlineChangedEvent {
  const _$DeadlineChangedEventImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'TaskEditEvent.deadlineChanged(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeadlineChangedEventImpl &&
            (identical(other.dateTime, dateTime) || other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return deadlineChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return deadlineChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (deadlineChanged != null) {
      return deadlineChanged(this);
    }
    return orElse();
  }
}

abstract class _DeadlineChangedEvent implements TaskEditEvent {
  const factory _DeadlineChangedEvent(final DateTime dateTime) = _$DeadlineChangedEventImpl;

  DateTime get dateTime;
}

/// @nodoc

class _$ClickSwitchEventImpl implements _ClickSwitchEvent {
  const _$ClickSwitchEventImpl({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'TaskEditEvent.clickSwitch(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClickSwitchEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_NameChangedEvent value) nameChanged,
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_UpdatedEvent value) updated,
  }) {
    return clickSwitch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_NameChangedEvent value)? nameChanged,
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_UpdatedEvent value)? updated,
  }) {
    return clickSwitch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_NameChangedEvent value)? nameChanged,
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_UpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (clickSwitch != null) {
      return clickSwitch(this);
    }
    return orElse();
  }
}

abstract class _ClickSwitchEvent implements TaskEditEvent {
  const factory _ClickSwitchEvent({required final bool value}) = _$ClickSwitchEventImpl;

  bool get value;
}

/// @nodoc

class _$SavedEventImpl implements _SavedEvent {
  const _$SavedEventImpl();

  @override
  String toString() {
    return 'TaskEditEvent.saved()';
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
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
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
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
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
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
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

abstract class _SavedEvent implements TaskEditEvent {
  const factory _SavedEvent() = _$SavedEventImpl;
}

/// @nodoc

class _$UpdatedEventImpl implements _UpdatedEvent {
  const _$UpdatedEventImpl();

  @override
  String toString() {
    return 'TaskEditEvent.updated()';
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
    required TResult Function(_DeadlineChangedEvent value) deadlineChanged,
    required TResult Function(_ClickSwitchEvent value) clickSwitch,
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
    TResult? Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult? Function(_ClickSwitchEvent value)? clickSwitch,
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
    TResult Function(_DeadlineChangedEvent value)? deadlineChanged,
    TResult Function(_ClickSwitchEvent value)? clickSwitch,
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

abstract class _UpdatedEvent implements TaskEditEvent {
  const factory _UpdatedEvent() = _$UpdatedEventImpl;
}

/// @nodoc
mixin _$TaskEditState {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  TaskEditStatus get status => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  String? get projectId => throw _privateConstructorUsedError;
  bool? get done => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEditStateCopyWith<TaskEditState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditStateCopyWith<$Res> {
  factory $TaskEditStateCopyWith(TaskEditState value, $Res Function(TaskEditState) then) =
      _$TaskEditStateCopyWithImpl<$Res, TaskEditState>;
  @useResult
  $Res call(
      {String id,
      String name,
      TaskEditStatus status,
      DateTime? deadline,
      String? projectId,
      bool? done,
      String? serverError});
}

/// @nodoc
class _$TaskEditStateCopyWithImpl<$Res, $Val extends TaskEditState>
    implements $TaskEditStateCopyWith<$Res> {
  _$TaskEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? deadline = freezed,
    Object? projectId = freezed,
    Object? done = freezed,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskEditStatus,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskEditStateImplCopyWith<$Res> implements $TaskEditStateCopyWith<$Res> {
  factory _$$TaskEditStateImplCopyWith(
          _$TaskEditStateImpl value, $Res Function(_$TaskEditStateImpl) then) =
      __$$TaskEditStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      TaskEditStatus status,
      DateTime? deadline,
      String? projectId,
      bool? done,
      String? serverError});
}

/// @nodoc
class __$$TaskEditStateImplCopyWithImpl<$Res>
    extends _$TaskEditStateCopyWithImpl<$Res, _$TaskEditStateImpl>
    implements _$$TaskEditStateImplCopyWith<$Res> {
  __$$TaskEditStateImplCopyWithImpl(
      _$TaskEditStateImpl _value, $Res Function(_$TaskEditStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? deadline = freezed,
    Object? projectId = freezed,
    Object? done = freezed,
    Object? serverError = freezed,
  }) {
    return _then(_$TaskEditStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskEditStatus,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TaskEditStateImpl implements _TaskEditState {
  const _$TaskEditStateImpl(
      {required this.id,
      required this.name,
      this.status = TaskEditStatus.initial,
      this.deadline,
      this.projectId,
      this.done,
      this.serverError});

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final TaskEditStatus status;
  @override
  final DateTime? deadline;
  @override
  final String? projectId;
  @override
  final bool? done;
  @override
  final String? serverError;

  @override
  String toString() {
    return 'TaskEditState(id: $id, name: $name, status: $status, deadline: $deadline, projectId: $projectId, done: $done, serverError: $serverError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deadline, deadline) || other.deadline == deadline) &&
            (identical(other.projectId, projectId) || other.projectId == projectId) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.serverError, serverError) || other.serverError == serverError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, status, deadline, projectId, done, serverError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEditStateImplCopyWith<_$TaskEditStateImpl> get copyWith =>
      __$$TaskEditStateImplCopyWithImpl<_$TaskEditStateImpl>(this, _$identity);
}

abstract class _TaskEditState implements TaskEditState {
  const factory _TaskEditState(
      {required final String id,
      required final String name,
      final TaskEditStatus status,
      final DateTime? deadline,
      final String? projectId,
      final bool? done,
      final String? serverError}) = _$TaskEditStateImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  TaskEditStatus get status;
  @override
  DateTime? get deadline;
  @override
  String? get projectId;
  @override
  bool? get done;
  @override
  String? get serverError;
  @override
  @JsonKey(ignore: true)
  _$$TaskEditStateImplCopyWith<_$TaskEditStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
