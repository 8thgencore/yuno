// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeHeaderEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$StartedEventImpl implements _StartedEvent {
  const _$StartedEventImpl();

  @override
  String toString() {
    return 'HomeHeaderEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements HomeHeaderEvent {
  const factory _StartedEvent() = _$StartedEventImpl;
}

/// @nodoc
mixin _$HomeHeaderState {
  String get username => throw _privateConstructorUsedError;
  int get taskLength => throw _privateConstructorUsedError;
  ITaskWithProjectName? get task => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeHeaderStateCopyWith<HomeHeaderState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeHeaderStateCopyWith<$Res> {
  factory $HomeHeaderStateCopyWith(HomeHeaderState value, $Res Function(HomeHeaderState) then) =
      _$HomeHeaderStateCopyWithImpl<$Res, HomeHeaderState>;
  @useResult
  $Res call({String username, int taskLength, ITaskWithProjectName? task, Object? error});

  $ITaskWithProjectNameCopyWith<$Res>? get task;
}

/// @nodoc
class _$HomeHeaderStateCopyWithImpl<$Res, $Val extends HomeHeaderState>
    implements $HomeHeaderStateCopyWith<$Res> {
  _$HomeHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? taskLength = null,
    Object? task = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      taskLength: null == taskLength
          ? _value.taskLength
          : taskLength // ignore: cast_nullable_to_non_nullable
              as int,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as ITaskWithProjectName?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ITaskWithProjectNameCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $ITaskWithProjectNameCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> implements $HomeHeaderStateCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, int taskLength, ITaskWithProjectName? task, Object? error});

  @override
  $ITaskWithProjectNameCopyWith<$Res>? get task;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$HomeHeaderStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? taskLength = null,
    Object? task = freezed,
    Object? error = freezed,
  }) {
    return _then(_$InitialStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      taskLength: null == taskLength
          ? _value.taskLength
          : taskLength // ignore: cast_nullable_to_non_nullable
              as int,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as ITaskWithProjectName?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$InitialStateImpl extends _InitialState {
  const _$InitialStateImpl(
      {required this.username, required this.taskLength, this.task, this.error})
      : super._();

  @override
  final String username;
  @override
  final int taskLength;
  @override
  final ITaskWithProjectName? task;
  @override
  final Object? error;

  @override
  String toString() {
    return 'HomeHeaderState.initial(username: $username, taskLength: $taskLength, task: $task, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialStateImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.taskLength, taskLength) || other.taskLength == taskLength) &&
            (identical(other.task, task) || other.task == task) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, username, taskLength, task, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      __$$InitialStateImplCopyWithImpl<_$InitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends HomeHeaderState {
  const factory _InitialState(
      {required final String username,
      required final int taskLength,
      final ITaskWithProjectName? task,
      final Object? error}) = _$InitialStateImpl;
  const _InitialState._() : super._();

  @override
  String get username;
  @override
  int get taskLength;
  @override
  ITaskWithProjectName? get task;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> implements $HomeHeaderStateCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, int taskLength, ITaskWithProjectName? task, Object? error});

  @override
  $ITaskWithProjectNameCopyWith<$Res>? get task;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$HomeHeaderStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? taskLength = null,
    Object? task = freezed,
    Object? error = freezed,
  }) {
    return _then(_$LoadingStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      taskLength: null == taskLength
          ? _value.taskLength
          : taskLength // ignore: cast_nullable_to_non_nullable
              as int,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as ITaskWithProjectName?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl extends _LoadingState {
  const _$LoadingStateImpl(
      {required this.username, required this.taskLength, this.task, this.error})
      : super._();

  @override
  final String username;
  @override
  final int taskLength;
  @override
  final ITaskWithProjectName? task;
  @override
  final Object? error;

  @override
  String toString() {
    return 'HomeHeaderState.loading(username: $username, taskLength: $taskLength, task: $task, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.taskLength, taskLength) || other.taskLength == taskLength) &&
            (identical(other.task, task) || other.task == task) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, username, taskLength, task, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FailureState value) failure,
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
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState extends HomeHeaderState {
  const factory _LoadingState(
      {required final String username,
      required final int taskLength,
      final ITaskWithProjectName? task,
      final Object? error}) = _$LoadingStateImpl;
  const _LoadingState._() : super._();

  @override
  String get username;
  @override
  int get taskLength;
  @override
  ITaskWithProjectName? get task;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> implements $HomeHeaderStateCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, int taskLength, ITaskWithProjectName? task, Object? error});

  @override
  $ITaskWithProjectNameCopyWith<$Res>? get task;
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$HomeHeaderStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(_$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? taskLength = null,
    Object? task = freezed,
    Object? error = freezed,
  }) {
    return _then(_$LoadedStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      taskLength: null == taskLength
          ? _value.taskLength
          : taskLength // ignore: cast_nullable_to_non_nullable
              as int,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as ITaskWithProjectName?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl extends _LoadedState {
  const _$LoadedStateImpl({required this.username, required this.taskLength, this.task, this.error})
      : super._();

  @override
  final String username;
  @override
  final int taskLength;
  @override
  final ITaskWithProjectName? task;
  @override
  final Object? error;

  @override
  String toString() {
    return 'HomeHeaderState.loaded(username: $username, taskLength: $taskLength, task: $task, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.taskLength, taskLength) || other.taskLength == taskLength) &&
            (identical(other.task, task) || other.task == task) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, username, taskLength, task, const DeepCollectionEquality().hash(error));

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
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends HomeHeaderState {
  const factory _LoadedState(
      {required final String username,
      required final int taskLength,
      final ITaskWithProjectName? task,
      final Object? error}) = _$LoadedStateImpl;
  const _LoadedState._() : super._();

  @override
  String get username;
  @override
  int get taskLength;
  @override
  ITaskWithProjectName? get task;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<$Res> implements $HomeHeaderStateCopyWith<$Res> {
  factory _$$FailureStateImplCopyWith(
          _$FailureStateImpl value, $Res Function(_$FailureStateImpl) then) =
      __$$FailureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, int taskLength, ITaskWithProjectName? task, Object? error});

  @override
  $ITaskWithProjectNameCopyWith<$Res>? get task;
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<$Res>
    extends _$HomeHeaderStateCopyWithImpl<$Res, _$FailureStateImpl>
    implements _$$FailureStateImplCopyWith<$Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl _value, $Res Function(_$FailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? taskLength = null,
    Object? task = freezed,
    Object? error = freezed,
  }) {
    return _then(_$FailureStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      taskLength: null == taskLength
          ? _value.taskLength
          : taskLength // ignore: cast_nullable_to_non_nullable
              as int,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as ITaskWithProjectName?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$FailureStateImpl extends _FailureState {
  const _$FailureStateImpl(
      {required this.username, required this.taskLength, this.task, this.error})
      : super._();

  @override
  final String username;
  @override
  final int taskLength;
  @override
  final ITaskWithProjectName? task;
  @override
  final Object? error;

  @override
  String toString() {
    return 'HomeHeaderState.failure(username: $username, taskLength: $taskLength, task: $task, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureStateImpl &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.taskLength, taskLength) || other.taskLength == taskLength) &&
            (identical(other.task, task) || other.task == task) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, username, taskLength, task, const DeepCollectionEquality().hash(error));

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
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState extends HomeHeaderState {
  const factory _FailureState(
      {required final String username,
      required final int taskLength,
      final ITaskWithProjectName? task,
      final Object? error}) = _$FailureStateImpl;
  const _FailureState._() : super._();

  @override
  String get username;
  @override
  int get taskLength;
  @override
  ITaskWithProjectName? get task;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
