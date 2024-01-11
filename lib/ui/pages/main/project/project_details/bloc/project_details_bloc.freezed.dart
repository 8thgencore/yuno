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

class _$StartedEventImpl implements _StartedEvent {
  const _$StartedEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectDetailsEvent.started(id: $id)';
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
  const factory _StartedEvent(final String id) = _$StartedEventImpl;

  String get id;
}

/// @nodoc

class _$CheckedTaskEventImpl implements _CheckedTaskEvent {
  const _$CheckedTaskEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectDetailsEvent.checkedTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckedTaskEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

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
  const factory _CheckedTaskEvent(final String id) = _$CheckedTaskEventImpl;

  String get id;
}

/// @nodoc

class _$DeletedTaskEventImpl implements _DeletedTaskEvent {
  const _$DeletedTaskEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectDetailsEvent.deletedTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedTaskEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

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
  const factory _DeletedTaskEvent(final String id) = _$DeletedTaskEventImpl;

  String get id;
}

/// @nodoc

class _$UpdateProjectEventImpl implements _UpdateProjectEvent {
  const _$UpdateProjectEventImpl();

  @override
  String toString() {
    return 'ProjectDetailsEvent.update()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateProjectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _UpdateProjectEvent() = _$UpdateProjectEventImpl;
}

/// @nodoc

class _$DeleteProjectEventImpl implements _DeleteProjectEvent {
  const _$DeleteProjectEventImpl();

  @override
  String toString() {
    return 'ProjectDetailsEvent.delete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteProjectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _DeleteProjectEvent() = _$DeleteProjectEventImpl;
}

/// @nodoc

class _$JoinProjectEventImpl implements _JoinProjectEvent {
  const _$JoinProjectEventImpl();

  @override
  String toString() {
    return 'ProjectDetailsEvent.join()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JoinProjectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _JoinProjectEvent() = _$JoinProjectEventImpl;
}

/// @nodoc

class _$LeaveProjectEventImpl implements _LeaveProjectEvent {
  const _$LeaveProjectEventImpl();

  @override
  String toString() {
    return 'ProjectDetailsEvent.leave()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeaveProjectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _LeaveProjectEvent() = _$LeaveProjectEventImpl;
}

/// @nodoc
mixin _$ProjectDetailsState {
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
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl extends _InitialState {
  const _$InitialStateImpl() : super._();

  @override
  String toString() {
    return 'ProjectDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _InitialState() = _$InitialStateImpl;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl extends _LoadingState {
  const _$LoadingStateImpl() : super._();

  @override
  String toString() {
    return 'ProjectDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _LoadingState() = _$LoadingStateImpl;
  const _LoadingState._() : super._();
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({IProjectWithUsersTasks project, List<ITaskRead> tasks, bool isMember, bool isOwner});

  $IProjectWithUsersTasksCopyWith<$Res> get project;
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(_$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? tasks = null,
    Object? isMember = null,
    Object? isOwner = null,
  }) {
    return _then(_$LoadedStateImpl(
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

class _$LoadedStateImpl extends _LoadedState {
  const _$LoadedStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
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
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

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
      required final bool isOwner}) = _$LoadedStateImpl;
  const _LoadedState._() : super._();

  IProjectWithUsersTasks get project;
  List<ITaskRead> get tasks;
  bool get isMember;
  bool get isOwner;
  @JsonKey(ignore: true)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<$Res> {
  factory _$$FailureStateImplCopyWith(
          _$FailureStateImpl value, $Res Function(_$FailureStateImpl) then) =
      __$$FailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$FailureStateImpl>
    implements _$$FailureStateImplCopyWith<$Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl _value, $Res Function(_$FailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureStateImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$FailureStateImpl extends _FailureState {
  const _$FailureStateImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'ProjectDetailsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureStateImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      __$$FailureStateImplCopyWithImpl<_$FailureStateImpl>(this, _$identity);

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
  const factory _FailureState(final Object error) = _$FailureStateImpl;
  const _FailureState._() : super._();

  Object get error;
  @JsonKey(ignore: true)
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KeepStateImplCopyWith<$Res> {
  factory _$$KeepStateImplCopyWith(_$KeepStateImpl value, $Res Function(_$KeepStateImpl) then) =
      __$$KeepStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KeepStateImplCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$KeepStateImpl>
    implements _$$KeepStateImplCopyWith<$Res> {
  __$$KeepStateImplCopyWithImpl(_$KeepStateImpl _value, $Res Function(_$KeepStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KeepStateImpl extends _KeepState {
  const _$KeepStateImpl() : super._();

  @override
  String toString() {
    return 'ProjectDetailsState.keep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$KeepStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _KeepState() = _$KeepStateImpl;
  const _KeepState._() : super._();
}

/// @nodoc
abstract class _$$DeletedStateImplCopyWith<$Res> {
  factory _$$DeletedStateImplCopyWith(
          _$DeletedStateImpl value, $Res Function(_$DeletedStateImpl) then) =
      __$$DeletedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedStateImplCopyWithImpl<$Res>
    extends _$ProjectDetailsStateCopyWithImpl<$Res, _$DeletedStateImpl>
    implements _$$DeletedStateImplCopyWith<$Res> {
  __$$DeletedStateImplCopyWithImpl(
      _$DeletedStateImpl _value, $Res Function(_$DeletedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedStateImpl extends _DeletedState {
  const _$DeletedStateImpl() : super._();

  @override
  String toString() {
    return 'ProjectDetailsState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

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
  const factory _DeletedState() = _$DeletedStateImpl;
  const _DeletedState._() : super._();
}
