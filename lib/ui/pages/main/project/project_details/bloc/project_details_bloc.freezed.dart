// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String id) checkedTask,
    required TResult Function(String id) deletedTask,
    required TResult Function() update,
    required TResult Function() delete,
    required TResult Function() join,
    required TResult Function() leave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String id)? checkedTask,
    TResult? Function(String id)? deletedTask,
    TResult? Function()? update,
    TResult? Function()? delete,
    TResult? Function()? join,
    TResult? Function()? leave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String id)? checkedTask,
    TResult Function(String id)? deletedTask,
    TResult Function()? update,
    TResult Function()? delete,
    TResult Function()? join,
    TResult Function()? leave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CheckedTaskEvent value) checkedTask,
    required TResult Function(_DeletedTaskEvent value) deletedTask,
    required TResult Function(_UpdateProjectEvent value) update,
    required TResult Function(_DeleteProjectEvent value) delete,
    required TResult Function(_JoinProjectEvent value) join,
    required TResult Function(_LeaveProjectEvent value) leave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CheckedTaskEvent value)? checkedTask,
    TResult? Function(_DeletedTaskEvent value)? deletedTask,
    TResult? Function(_UpdateProjectEvent value)? update,
    TResult? Function(_DeleteProjectEvent value)? delete,
    TResult? Function(_JoinProjectEvent value)? join,
    TResult? Function(_LeaveProjectEvent value)? leave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CheckedTaskEvent value)? checkedTask,
    TResult Function(_DeletedTaskEvent value)? deletedTask,
    TResult Function(_UpdateProjectEvent value)? update,
    TResult Function(_DeleteProjectEvent value)? delete,
    TResult Function(_JoinProjectEvent value)? join,
    TResult Function(_LeaveProjectEvent value)? leave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailsEventCopyWith<$Res> {
  factory $ProjectDetailsEventCopyWith(
          ProjectDetailsEvent value, $Res Function(ProjectDetailsEvent) then) =
      _$ProjectDetailsEventCopyWithImpl<$Res, ProjectDetailsEvent>;
}

/// @nodoc
class _$ProjectDetailsEventCopyWithImpl<$Res, $Val extends ProjectDetailsEvent>
    implements $ProjectDetailsEventCopyWith<$Res> {
  _$ProjectDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(_$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$ProjectDetailsEventCopyWithImpl<$Res, _$_StartedEvent>
    implements _$$_StartedEventCopyWith<$Res> {
  __$$_StartedEventCopyWithImpl(_$_StartedEvent _value, $Res Function(_$_StartedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_StartedEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartedEvent implements _StartedEvent {
  const _$_StartedEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectDetailsEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedEventCopyWith<_$_StartedEvent> get copyWith =>
      __$$_StartedEventCopyWithImpl<_$_StartedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String id) checkedTask,
    required TResult Function(String id) deletedTask,
    required TResult Function() update,
    required TResult Function() delete,
    required TResult Function() join,
    required TResult Function() leave,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String id)? checkedTask,
    TResult? Function(String id)? deletedTask,
    TResult? Function()? update,
    TResult? Function()? delete,
    TResult? Function()? join,
    TResult? Function()? leave,
  }) {
    return started?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String id)? checkedTask,
    TResult Function(String id)? deletedTask,
    TResult Function()? update,
    TResult Function()? delete,
    TResult Function()? join,
    TResult Function()? leave,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CheckedTaskEvent value) checkedTask,
    required TResult Function(_DeletedTaskEvent value) deletedTask,
    required TResult Function(_UpdateProjectEvent value) update,
    required TResult Function(_DeleteProjectEvent value) delete,
    required TResult Function(_JoinProjectEvent value) join,
    required TResult Function(_LeaveProjectEvent value) leave,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CheckedTaskEvent value)? checkedTask,
    TResult? Function(_DeletedTaskEvent value)? deletedTask,
    TResult? Function(_UpdateProjectEvent value)? update,
    TResult? Function(_DeleteProjectEvent value)? delete,
    TResult? Function(_JoinProjectEvent value)? join,
    TResult? Function(_LeaveProjectEvent value)? leave,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CheckedTaskEvent value)? checkedTask,
    TResult Function(_DeletedTaskEvent value)? deletedTask,
    TResult Function(_UpdateProjectEvent value)? update,
    TResult Function(_DeleteProjectEvent value)? delete,
    TResult Function(_JoinProjectEvent value)? join,
    TResult Function(_LeaveProjectEvent value)? leave,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements ProjectDetailsEvent {
  const factory _StartedEvent(final String id) = _$_StartedEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_StartedEventCopyWith<_$_StartedEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckedTaskEventCopyWith<$Res> {
  factory _$$_CheckedTaskEventCopyWith(
          _$_CheckedTaskEvent value, $Res Function(_$_CheckedTaskEvent) then) =
      __$$_CheckedTaskEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_CheckedTaskEventCopyWithImpl<$Res>
    extends _$ProjectDetailsEventCopyWithImpl<$Res, _$_CheckedTaskEvent>
    implements _$$_CheckedTaskEventCopyWith<$Res> {
  __$$_CheckedTaskEventCopyWithImpl(
      _$_CheckedTaskEvent _value, $Res Function(_$_CheckedTaskEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_CheckedTaskEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckedTaskEvent implements _CheckedTaskEvent {
  const _$_CheckedTaskEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectDetailsEvent.checkedTask(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckedTaskEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckedTaskEventCopyWith<_$_CheckedTaskEvent> get copyWith =>
      __$$_CheckedTaskEventCopyWithImpl<_$_CheckedTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String id) checkedTask,
    required TResult Function(String id) deletedTask,
    required TResult Function() update,
    required TResult Function() delete,
    required TResult Function() join,
    required TResult Function() leave,
  }) {
    return checkedTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String id)? checkedTask,
    TResult? Function(String id)? deletedTask,
    TResult? Function()? update,
    TResult? Function()? delete,
    TResult? Function()? join,
    TResult? Function()? leave,
  }) {
    return checkedTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String id)? checkedTask,
    TResult Function(String id)? deletedTask,
    TResult Function()? update,
    TResult Function()? delete,
    TResult Function()? join,
    TResult Function()? leave,
    required TResult orElse(),
  }) {
    if (checkedTask != null) {
      return checkedTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CheckedTaskEvent value) checkedTask,
    required TResult Function(_DeletedTaskEvent value) deletedTask,
    required TResult Function(_UpdateProjectEvent value) update,
    required TResult Function(_DeleteProjectEvent value) delete,
    required TResult Function(_JoinProjectEvent value) join,
    required TResult Function(_LeaveProjectEvent value) leave,
  }) {
    return checkedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CheckedTaskEvent value)? checkedTask,
    TResult? Function(_DeletedTaskEvent value)? deletedTask,
    TResult? Function(_UpdateProjectEvent value)? update,
    TResult? Function(_DeleteProjectEvent value)? delete,
    TResult? Function(_JoinProjectEvent value)? join,
    TResult? Function(_LeaveProjectEvent value)? leave,
  }) {
    return checkedTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CheckedTaskEvent value)? checkedTask,
    TResult Function(_DeletedTaskEvent value)? deletedTask,
    TResult Function(_UpdateProjectEvent value)? update,
    TResult Function(_DeleteProjectEvent value)? delete,
    TResult Function(_JoinProjectEvent value)? join,
    TResult Function(_LeaveProjectEvent value)? leave,
    required TResult orElse(),
  }) {
    if (checkedTask != null) {
      return checkedTask(this);
    }
    return orElse();
  }
}

abstract class _CheckedTaskEvent implements ProjectDetailsEvent {
  const factory _CheckedTaskEvent(final String id) = _$_CheckedTaskEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_CheckedTaskEventCopyWith<_$_CheckedTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeletedTaskEventCopyWith<$Res> {
  factory _$$_DeletedTaskEventCopyWith(
          _$_DeletedTaskEvent value, $Res Function(_$_DeletedTaskEvent) then) =
      __$$_DeletedTaskEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_DeletedTaskEventCopyWithImpl<$Res>
    extends _$ProjectDetailsEventCopyWithImpl<$Res, _$_DeletedTaskEvent>
    implements _$$_DeletedTaskEventCopyWith<$Res> {
  __$$_DeletedTaskEventCopyWithImpl(
      _$_DeletedTaskEvent _value, $Res Function(_$_DeletedTaskEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeletedTaskEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeletedTaskEvent implements _DeletedTaskEvent {
  const _$_DeletedTaskEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectDetailsEvent.deletedTask(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletedTaskEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletedTaskEventCopyWith<_$_DeletedTaskEvent> get copyWith =>
      __$$_DeletedTaskEventCopyWithImpl<_$_DeletedTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String id) checkedTask,
    required TResult Function(String id) deletedTask,
    required TResult Function() update,
    required TResult Function() delete,
    required TResult Function() join,
    required TResult Function() leave,
  }) {
    return deletedTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String id)? checkedTask,
    TResult? Function(String id)? deletedTask,
    TResult? Function()? update,
    TResult? Function()? delete,
    TResult? Function()? join,
    TResult? Function()? leave,
  }) {
    return deletedTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String id)? checkedTask,
    TResult Function(String id)? deletedTask,
    TResult Function()? update,
    TResult Function()? delete,
    TResult Function()? join,
    TResult Function()? leave,
    required TResult orElse(),
  }) {
    if (deletedTask != null) {
      return deletedTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CheckedTaskEvent value) checkedTask,
    required TResult Function(_DeletedTaskEvent value) deletedTask,
    required TResult Function(_UpdateProjectEvent value) update,
    required TResult Function(_DeleteProjectEvent value) delete,
    required TResult Function(_JoinProjectEvent value) join,
    required TResult Function(_LeaveProjectEvent value) leave,
  }) {
    return deletedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CheckedTaskEvent value)? checkedTask,
    TResult? Function(_DeletedTaskEvent value)? deletedTask,
    TResult? Function(_UpdateProjectEvent value)? update,
    TResult? Function(_DeleteProjectEvent value)? delete,
    TResult? Function(_JoinProjectEvent value)? join,
    TResult? Function(_LeaveProjectEvent value)? leave,
  }) {
    return deletedTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CheckedTaskEvent value)? checkedTask,
    TResult Function(_DeletedTaskEvent value)? deletedTask,
    TResult Function(_UpdateProjectEvent value)? update,
    TResult Function(_DeleteProjectEvent value)? delete,
    TResult Function(_JoinProjectEvent value)? join,
    TResult Function(_LeaveProjectEvent value)? leave,
    required TResult orElse(),
  }) {
    if (deletedTask != null) {
      return deletedTask(this);
    }
    return orElse();
  }
}

abstract class _DeletedTaskEvent implements ProjectDetailsEvent {
  const factory _DeletedTaskEvent(final String id) = _$_DeletedTaskEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_DeletedTaskEventCopyWith<_$_DeletedTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateProjectEventCopyWith<$Res> {
  factory _$$_UpdateProjectEventCopyWith(
          _$_UpdateProjectEvent value, $Res Function(_$_UpdateProjectEvent) then) =
      __$$_UpdateProjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateProjectEventCopyWithImpl<$Res>
    extends _$ProjectDetailsEventCopyWithImpl<$Res, _$_UpdateProjectEvent>
    implements _$$_UpdateProjectEventCopyWith<$Res> {
  __$$_UpdateProjectEventCopyWithImpl(
      _$_UpdateProjectEvent _value, $Res Function(_$_UpdateProjectEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateProjectEvent implements _UpdateProjectEvent {
  const _$_UpdateProjectEvent();

  @override
  String toString() {
    return 'ProjectDetailsEvent.update()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateProjectEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String id) checkedTask,
    required TResult Function(String id) deletedTask,
    required TResult Function() update,
    required TResult Function() delete,
    required TResult Function() join,
    required TResult Function() leave,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String id)? checkedTask,
    TResult? Function(String id)? deletedTask,
    TResult? Function()? update,
    TResult? Function()? delete,
    TResult? Function()? join,
    TResult? Function()? leave,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String id)? checkedTask,
    TResult Function(String id)? deletedTask,
    TResult Function()? update,
    TResult Function()? delete,
    TResult Function()? join,
    TResult Function()? leave,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CheckedTaskEvent value) checkedTask,
    required TResult Function(_DeletedTaskEvent value) deletedTask,
    required TResult Function(_UpdateProjectEvent value) update,
    required TResult Function(_DeleteProjectEvent value) delete,
    required TResult Function(_JoinProjectEvent value) join,
    required TResult Function(_LeaveProjectEvent value) leave,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CheckedTaskEvent value)? checkedTask,
    TResult? Function(_DeletedTaskEvent value)? deletedTask,
    TResult? Function(_UpdateProjectEvent value)? update,
    TResult? Function(_DeleteProjectEvent value)? delete,
    TResult? Function(_JoinProjectEvent value)? join,
    TResult? Function(_LeaveProjectEvent value)? leave,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CheckedTaskEvent value)? checkedTask,
    TResult Function(_DeletedTaskEvent value)? deletedTask,
    TResult Function(_UpdateProjectEvent value)? update,
    TResult Function(_DeleteProjectEvent value)? delete,
    TResult Function(_JoinProjectEvent value)? join,
    TResult Function(_LeaveProjectEvent value)? leave,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateProjectEvent implements ProjectDetailsEvent {
  const factory _UpdateProjectEvent() = _$_UpdateProjectEvent;
}

/// @nodoc
abstract class _$$_DeleteProjectEventCopyWith<$Res> {
  factory _$$_DeleteProjectEventCopyWith(
          _$_DeleteProjectEvent value, $Res Function(_$_DeleteProjectEvent) then) =
      __$$_DeleteProjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteProjectEventCopyWithImpl<$Res>
    extends _$ProjectDetailsEventCopyWithImpl<$Res, _$_DeleteProjectEvent>
    implements _$$_DeleteProjectEventCopyWith<$Res> {
  __$$_DeleteProjectEventCopyWithImpl(
      _$_DeleteProjectEvent _value, $Res Function(_$_DeleteProjectEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteProjectEvent implements _DeleteProjectEvent {
  const _$_DeleteProjectEvent();

  @override
  String toString() {
    return 'ProjectDetailsEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteProjectEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String id) checkedTask,
    required TResult Function(String id) deletedTask,
    required TResult Function() update,
    required TResult Function() delete,
    required TResult Function() join,
    required TResult Function() leave,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String id)? checkedTask,
    TResult? Function(String id)? deletedTask,
    TResult? Function()? update,
    TResult? Function()? delete,
    TResult? Function()? join,
    TResult? Function()? leave,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String id)? checkedTask,
    TResult Function(String id)? deletedTask,
    TResult Function()? update,
    TResult Function()? delete,
    TResult Function()? join,
    TResult Function()? leave,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CheckedTaskEvent value) checkedTask,
    required TResult Function(_DeletedTaskEvent value) deletedTask,
    required TResult Function(_UpdateProjectEvent value) update,
    required TResult Function(_DeleteProjectEvent value) delete,
    required TResult Function(_JoinProjectEvent value) join,
    required TResult Function(_LeaveProjectEvent value) leave,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CheckedTaskEvent value)? checkedTask,
    TResult? Function(_DeletedTaskEvent value)? deletedTask,
    TResult? Function(_UpdateProjectEvent value)? update,
    TResult? Function(_DeleteProjectEvent value)? delete,
    TResult? Function(_JoinProjectEvent value)? join,
    TResult? Function(_LeaveProjectEvent value)? leave,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CheckedTaskEvent value)? checkedTask,
    TResult Function(_DeletedTaskEvent value)? deletedTask,
    TResult Function(_UpdateProjectEvent value)? update,
    TResult Function(_DeleteProjectEvent value)? delete,
    TResult Function(_JoinProjectEvent value)? join,
    TResult Function(_LeaveProjectEvent value)? leave,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteProjectEvent implements ProjectDetailsEvent {
  const factory _DeleteProjectEvent() = _$_DeleteProjectEvent;
}

/// @nodoc
abstract class _$$_JoinProjectEventCopyWith<$Res> {
  factory _$$_JoinProjectEventCopyWith(
          _$_JoinProjectEvent value, $Res Function(_$_JoinProjectEvent) then) =
      __$$_JoinProjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JoinProjectEventCopyWithImpl<$Res>
    extends _$ProjectDetailsEventCopyWithImpl<$Res, _$_JoinProjectEvent>
    implements _$$_JoinProjectEventCopyWith<$Res> {
  __$$_JoinProjectEventCopyWithImpl(
      _$_JoinProjectEvent _value, $Res Function(_$_JoinProjectEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_JoinProjectEvent implements _JoinProjectEvent {
  const _$_JoinProjectEvent();

  @override
  String toString() {
    return 'ProjectDetailsEvent.join()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JoinProjectEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String id) checkedTask,
    required TResult Function(String id) deletedTask,
    required TResult Function() update,
    required TResult Function() delete,
    required TResult Function() join,
    required TResult Function() leave,
  }) {
    return join();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String id)? checkedTask,
    TResult? Function(String id)? deletedTask,
    TResult? Function()? update,
    TResult? Function()? delete,
    TResult? Function()? join,
    TResult? Function()? leave,
  }) {
    return join?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String id)? checkedTask,
    TResult Function(String id)? deletedTask,
    TResult Function()? update,
    TResult Function()? delete,
    TResult Function()? join,
    TResult Function()? leave,
    required TResult orElse(),
  }) {
    if (join != null) {
      return join();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CheckedTaskEvent value) checkedTask,
    required TResult Function(_DeletedTaskEvent value) deletedTask,
    required TResult Function(_UpdateProjectEvent value) update,
    required TResult Function(_DeleteProjectEvent value) delete,
    required TResult Function(_JoinProjectEvent value) join,
    required TResult Function(_LeaveProjectEvent value) leave,
  }) {
    return join(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CheckedTaskEvent value)? checkedTask,
    TResult? Function(_DeletedTaskEvent value)? deletedTask,
    TResult? Function(_UpdateProjectEvent value)? update,
    TResult? Function(_DeleteProjectEvent value)? delete,
    TResult? Function(_JoinProjectEvent value)? join,
    TResult? Function(_LeaveProjectEvent value)? leave,
  }) {
    return join?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CheckedTaskEvent value)? checkedTask,
    TResult Function(_DeletedTaskEvent value)? deletedTask,
    TResult Function(_UpdateProjectEvent value)? update,
    TResult Function(_DeleteProjectEvent value)? delete,
    TResult Function(_JoinProjectEvent value)? join,
    TResult Function(_LeaveProjectEvent value)? leave,
    required TResult orElse(),
  }) {
    if (join != null) {
      return join(this);
    }
    return orElse();
  }
}

abstract class _JoinProjectEvent implements ProjectDetailsEvent {
  const factory _JoinProjectEvent() = _$_JoinProjectEvent;
}

/// @nodoc
abstract class _$$_LeaveProjectEventCopyWith<$Res> {
  factory _$$_LeaveProjectEventCopyWith(
          _$_LeaveProjectEvent value, $Res Function(_$_LeaveProjectEvent) then) =
      __$$_LeaveProjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LeaveProjectEventCopyWithImpl<$Res>
    extends _$ProjectDetailsEventCopyWithImpl<$Res, _$_LeaveProjectEvent>
    implements _$$_LeaveProjectEventCopyWith<$Res> {
  __$$_LeaveProjectEventCopyWithImpl(
      _$_LeaveProjectEvent _value, $Res Function(_$_LeaveProjectEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LeaveProjectEvent implements _LeaveProjectEvent {
  const _$_LeaveProjectEvent();

  @override
  String toString() {
    return 'ProjectDetailsEvent.leave()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LeaveProjectEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String id) checkedTask,
    required TResult Function(String id) deletedTask,
    required TResult Function() update,
    required TResult Function() delete,
    required TResult Function() join,
    required TResult Function() leave,
  }) {
    return leave();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? started,
    TResult? Function(String id)? checkedTask,
    TResult? Function(String id)? deletedTask,
    TResult? Function()? update,
    TResult? Function()? delete,
    TResult? Function()? join,
    TResult? Function()? leave,
  }) {
    return leave?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String id)? checkedTask,
    TResult Function(String id)? deletedTask,
    TResult Function()? update,
    TResult Function()? delete,
    TResult Function()? join,
    TResult Function()? leave,
    required TResult orElse(),
  }) {
    if (leave != null) {
      return leave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CheckedTaskEvent value) checkedTask,
    required TResult Function(_DeletedTaskEvent value) deletedTask,
    required TResult Function(_UpdateProjectEvent value) update,
    required TResult Function(_DeleteProjectEvent value) delete,
    required TResult Function(_JoinProjectEvent value) join,
    required TResult Function(_LeaveProjectEvent value) leave,
  }) {
    return leave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CheckedTaskEvent value)? checkedTask,
    TResult? Function(_DeletedTaskEvent value)? deletedTask,
    TResult? Function(_UpdateProjectEvent value)? update,
    TResult? Function(_DeleteProjectEvent value)? delete,
    TResult? Function(_JoinProjectEvent value)? join,
    TResult? Function(_LeaveProjectEvent value)? leave,
  }) {
    return leave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CheckedTaskEvent value)? checkedTask,
    TResult Function(_DeletedTaskEvent value)? deletedTask,
    TResult Function(_UpdateProjectEvent value)? update,
    TResult Function(_DeleteProjectEvent value)? delete,
    TResult Function(_JoinProjectEvent value)? join,
    TResult Function(_LeaveProjectEvent value)? leave,
    required TResult orElse(),
  }) {
    if (leave != null) {
      return leave(this);
    }
    return orElse();
  }
}

abstract class _LeaveProjectEvent implements ProjectDetailsEvent {
  const factory _LeaveProjectEvent() = _$_LeaveProjectEvent;
}

/// @nodoc
mixin _$ProjectDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)
        loaded,
    required TResult Function(Object error) failure,
    required TResult Function() keep,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult? Function(Object error)? failure,
    TResult? Function()? keep,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult Function(Object error)? failure,
    TResult Function()? keep,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
    required TResult Function(_KeepState value) keep,
    required TResult Function(_DeletedState value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
    TResult? Function(_KeepState value)? keep,
    TResult? Function(_DeletedState value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    TResult Function(_KeepState value)? keep,
    TResult Function(_DeletedState value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailsStateCopyWith<$Res> {
  factory $ProjectDetailsStateCopyWith(
          ProjectDetailsState value, $Res Function(ProjectDetailsState) then) =
      _$ProjectDetailsStateCopyWithImpl<$Res, ProjectDetailsState>;
}

/// @nodoc
class _$ProjectDetailsStateCopyWithImpl<$Res, $Val extends ProjectDetailsState>
    implements $ProjectDetailsStateCopyWith<$Res> {
  _$ProjectDetailsStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(_$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(_$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState extends _InitialState {
  const _$_InitialState() : super._();

  @override
  String toString() {
    return 'ProjectDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)
        loaded,
    required TResult Function(Object error) failure,
    required TResult Function() keep,
    required TResult Function() deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult? Function(Object error)? failure,
    TResult? Function()? keep,
    TResult? Function()? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult Function(Object error)? failure,
    TResult Function()? keep,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
    required TResult Function(_KeepState value) keep,
    required TResult Function(_DeletedState value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
    TResult? Function(_KeepState value)? keep,
    TResult? Function(_DeletedState value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    TResult Function(_KeepState value)? keep,
    TResult Function(_DeletedState value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends ProjectDetailsState {
  const factory _InitialState() = _$_InitialState;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(_$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(_$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState extends _LoadingState {
  const _$_LoadingState() : super._();

  @override
  String toString() {
    return 'ProjectDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)
        loaded,
    required TResult Function(Object error) failure,
    required TResult Function() keep,
    required TResult Function() deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult? Function(Object error)? failure,
    TResult? Function()? keep,
    TResult? Function()? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult Function(Object error)? failure,
    TResult Function()? keep,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
    required TResult Function(_KeepState value) keep,
    required TResult Function(_DeletedState value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
    TResult? Function(_KeepState value)? keep,
    TResult? Function(_DeletedState value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    TResult Function(_KeepState value)? keep,
    TResult Function(_DeletedState value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState extends ProjectDetailsState {
  const factory _LoadingState() = _$_LoadingState;
  const _LoadingState._() : super._();
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(_$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner});

  $IProjectWithUsersTasksCopyWith<$Res> get project;
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(_$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? tasks = null,
    Object? isMember = null,
    Object? isOwner = null,
  }) {
    return _then(_$_LoadedState(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as IProjectWithUsersTasks,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<ITaskRead>,
      isMember: null == isMember
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IProjectWithUsersTasksCopyWith<$Res> get project {
    return $IProjectWithUsersTasksCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$_LoadedState extends _LoadedState {
  const _$_LoadedState(
      {required this.project,
      required final List<ITaskRead> tasks,
      required this.isMember,
      required this.isOwner})
      : _tasks = tasks,
        super._();

  @override
  final IProjectWithUsersTasks project;
  final List<ITaskRead> _tasks;
  @override
  List<ITaskRead> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  final bool isMember;
  @override
  final bool isOwner;

  @override
  String toString() {
    return 'ProjectDetailsState.loaded(project: $project, tasks: $tasks, isMember: $isMember, isOwner: $isOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            (identical(other.project, project) || other.project == project) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.isMember, isMember) || other.isMember == isMember) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, project, const DeepCollectionEquality().hash(_tasks), isMember, isOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)
        loaded,
    required TResult Function(Object error) failure,
    required TResult Function() keep,
    required TResult Function() deleted,
  }) {
    return loaded(project, tasks, isMember, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult? Function(Object error)? failure,
    TResult? Function()? keep,
    TResult? Function()? deleted,
  }) {
    return loaded?.call(project, tasks, isMember, isOwner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult Function(Object error)? failure,
    TResult Function()? keep,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(project, tasks, isMember, isOwner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
    required TResult Function(_KeepState value) keep,
    required TResult Function(_DeletedState value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
    TResult? Function(_KeepState value)? keep,
    TResult? Function(_DeletedState value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    TResult Function(_KeepState value)? keep,
    TResult Function(_DeletedState value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends ProjectDetailsState {
  const factory _LoadedState(
      {required final IProjectWithUsersTasks project,
      required final List<ITaskRead> tasks,
      required final bool isMember,
      required final bool isOwner}) = _$_LoadedState;
  const _LoadedState._() : super._();

  IProjectWithUsersTasks get project;
  List<ITaskRead> get tasks;
  bool get isMember;
  bool get isOwner;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureStateCopyWith<$Res> {
  factory _$$_FailureStateCopyWith(_$_FailureState value, $Res Function(_$_FailureState) then) =
      __$$_FailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_FailureStateCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$_FailureState>
    implements _$$_FailureStateCopyWith<$Res> {
  __$$_FailureStateCopyWithImpl(_$_FailureState _value, $Res Function(_$_FailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FailureState(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_FailureState extends _FailureState {
  const _$_FailureState(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'ProjectDetailsState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureStateCopyWith<_$_FailureState> get copyWith =>
      __$$_FailureStateCopyWithImpl<_$_FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)
        loaded,
    required TResult Function(Object error) failure,
    required TResult Function() keep,
    required TResult Function() deleted,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult? Function(Object error)? failure,
    TResult? Function()? keep,
    TResult? Function()? deleted,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult Function(Object error)? failure,
    TResult Function()? keep,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
    required TResult Function(_KeepState value) keep,
    required TResult Function(_DeletedState value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
    TResult? Function(_KeepState value)? keep,
    TResult? Function(_DeletedState value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    TResult Function(_KeepState value)? keep,
    TResult Function(_DeletedState value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState extends ProjectDetailsState {
  const factory _FailureState(final Object error) = _$_FailureState;
  const _FailureState._() : super._();

  Object get error;
  @JsonKey(ignore: true)
  _$$_FailureStateCopyWith<_$_FailureState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_KeepStateCopyWith<$Res> {
  factory _$$_KeepStateCopyWith(_$_KeepState value, $Res Function(_$_KeepState) then) =
      __$$_KeepStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_KeepStateCopyWithImpl<$Res> extends _$ProjectDetailsStateCopyWithImpl<$Res, _$_KeepState>
    implements _$$_KeepStateCopyWith<$Res> {
  __$$_KeepStateCopyWithImpl(_$_KeepState _value, $Res Function(_$_KeepState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_KeepState extends _KeepState {
  const _$_KeepState() : super._();

  @override
  String toString() {
    return 'ProjectDetailsState.keep()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_KeepState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)
        loaded,
    required TResult Function(Object error) failure,
    required TResult Function() keep,
    required TResult Function() deleted,
  }) {
    return keep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult? Function(Object error)? failure,
    TResult? Function()? keep,
    TResult? Function()? deleted,
  }) {
    return keep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult Function(Object error)? failure,
    TResult Function()? keep,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (keep != null) {
      return keep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
    required TResult Function(_KeepState value) keep,
    required TResult Function(_DeletedState value) deleted,
  }) {
    return keep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
    TResult? Function(_KeepState value)? keep,
    TResult? Function(_DeletedState value)? deleted,
  }) {
    return keep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    TResult Function(_KeepState value)? keep,
    TResult Function(_DeletedState value)? deleted,
    required TResult orElse(),
  }) {
    if (keep != null) {
      return keep(this);
    }
    return orElse();
  }
}

abstract class _KeepState extends ProjectDetailsState {
  const factory _KeepState() = _$_KeepState;
  const _KeepState._() : super._();
}

/// @nodoc
abstract class _$$_DeletedStateCopyWith<$Res> {
  factory _$$_DeletedStateCopyWith(_$_DeletedState value, $Res Function(_$_DeletedState) then) =
      __$$_DeletedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletedStateCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$_DeletedState>
    implements _$$_DeletedStateCopyWith<$Res> {
  __$$_DeletedStateCopyWithImpl(_$_DeletedState _value, $Res Function(_$_DeletedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeletedState extends _DeletedState {
  const _$_DeletedState() : super._();

  @override
  String toString() {
    return 'ProjectDetailsState.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$_DeletedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)
        loaded,
    required TResult Function(Object error) failure,
    required TResult Function() keep,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult? Function(Object error)? failure,
    TResult? Function()? keep,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner)?
        loaded,
    TResult Function(Object error)? failure,
    TResult Function()? keep,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
    required TResult Function(_KeepState value) keep,
    required TResult Function(_DeletedState value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
    TResult? Function(_KeepState value)? keep,
    TResult? Function(_DeletedState value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    TResult Function(_KeepState value)? keep,
    TResult Function(_DeletedState value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeletedState extends ProjectDetailsState {
  const factory _DeletedState() = _$_DeletedState;
  const _DeletedState._() : super._();
}
