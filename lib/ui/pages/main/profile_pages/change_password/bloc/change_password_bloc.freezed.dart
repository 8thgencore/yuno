// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) currentPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String text) confirmNewPasswordChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? currentPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String text)? confirmNewPasswordChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? currentPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String text)? confirmNewPasswordChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value)
        currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value)
        newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value)
        confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res, ChangePasswordEvent>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res, $Val extends ChangePasswordEvent>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(
          _$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$_StartedEvent>
    implements _$$_StartedEventCopyWith<$Res> {
  __$$_StartedEventCopyWithImpl(
      _$_StartedEvent _value, $Res Function(_$_StartedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartedEvent implements _StartedEvent {
  const _$_StartedEvent();

  @override
  String toString() {
    return 'ChangePasswordEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) currentPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String text) confirmNewPasswordChanged,
    required TResult Function() saved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? currentPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String text)? confirmNewPasswordChanged,
    TResult? Function()? saved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? currentPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String text)? confirmNewPasswordChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value)
        currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value)
        newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value)
        confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements ChangePasswordEvent {
  const factory _StartedEvent() = _$_StartedEvent;
}

/// @nodoc
abstract class _$$_CurrentPasswordChangedEventCopyWith<$Res> {
  factory _$$_CurrentPasswordChangedEventCopyWith(
          _$_CurrentPasswordChangedEvent value,
          $Res Function(_$_CurrentPasswordChangedEvent) then) =
      __$$_CurrentPasswordChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_CurrentPasswordChangedEventCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$_CurrentPasswordChangedEvent>
    implements _$$_CurrentPasswordChangedEventCopyWith<$Res> {
  __$$_CurrentPasswordChangedEventCopyWithImpl(
      _$_CurrentPasswordChangedEvent _value,
      $Res Function(_$_CurrentPasswordChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_CurrentPasswordChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrentPasswordChangedEvent implements _CurrentPasswordChangedEvent {
  const _$_CurrentPasswordChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChangePasswordEvent.currentPasswordChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentPasswordChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentPasswordChangedEventCopyWith<_$_CurrentPasswordChangedEvent>
      get copyWith => __$$_CurrentPasswordChangedEventCopyWithImpl<
          _$_CurrentPasswordChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) currentPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String text) confirmNewPasswordChanged,
    required TResult Function() saved,
  }) {
    return currentPasswordChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? currentPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String text)? confirmNewPasswordChanged,
    TResult? Function()? saved,
  }) {
    return currentPasswordChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? currentPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String text)? confirmNewPasswordChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (currentPasswordChanged != null) {
      return currentPasswordChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value)
        currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value)
        newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value)
        confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return currentPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return currentPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (currentPasswordChanged != null) {
      return currentPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _CurrentPasswordChangedEvent implements ChangePasswordEvent {
  const factory _CurrentPasswordChangedEvent(final String text) =
      _$_CurrentPasswordChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_CurrentPasswordChangedEventCopyWith<_$_CurrentPasswordChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewPasswordChangedEventCopyWith<$Res> {
  factory _$$_NewPasswordChangedEventCopyWith(_$_NewPasswordChangedEvent value,
          $Res Function(_$_NewPasswordChangedEvent) then) =
      __$$_NewPasswordChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_NewPasswordChangedEventCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$_NewPasswordChangedEvent>
    implements _$$_NewPasswordChangedEventCopyWith<$Res> {
  __$$_NewPasswordChangedEventCopyWithImpl(_$_NewPasswordChangedEvent _value,
      $Res Function(_$_NewPasswordChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_NewPasswordChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewPasswordChangedEvent implements _NewPasswordChangedEvent {
  const _$_NewPasswordChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPasswordChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewPasswordChangedEventCopyWith<_$_NewPasswordChangedEvent>
      get copyWith =>
          __$$_NewPasswordChangedEventCopyWithImpl<_$_NewPasswordChangedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) currentPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String text) confirmNewPasswordChanged,
    required TResult Function() saved,
  }) {
    return newPasswordChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? currentPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String text)? confirmNewPasswordChanged,
    TResult? Function()? saved,
  }) {
    return newPasswordChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? currentPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String text)? confirmNewPasswordChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value)
        currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value)
        newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value)
        confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return newPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordChangedEvent implements ChangePasswordEvent {
  const factory _NewPasswordChangedEvent(final String text) =
      _$_NewPasswordChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_NewPasswordChangedEventCopyWith<_$_NewPasswordChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmNewPasswordChangedEventCopyWith<$Res> {
  factory _$$_ConfirmNewPasswordChangedEventCopyWith(
          _$_ConfirmNewPasswordChangedEvent value,
          $Res Function(_$_ConfirmNewPasswordChangedEvent) then) =
      __$$_ConfirmNewPasswordChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_ConfirmNewPasswordChangedEventCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$_ConfirmNewPasswordChangedEvent>
    implements _$$_ConfirmNewPasswordChangedEventCopyWith<$Res> {
  __$$_ConfirmNewPasswordChangedEventCopyWithImpl(
      _$_ConfirmNewPasswordChangedEvent _value,
      $Res Function(_$_ConfirmNewPasswordChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_ConfirmNewPasswordChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmNewPasswordChangedEvent
    implements _ConfirmNewPasswordChangedEvent {
  const _$_ConfirmNewPasswordChangedEvent(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChangePasswordEvent.confirmNewPasswordChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmNewPasswordChangedEvent &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmNewPasswordChangedEventCopyWith<_$_ConfirmNewPasswordChangedEvent>
      get copyWith => __$$_ConfirmNewPasswordChangedEventCopyWithImpl<
          _$_ConfirmNewPasswordChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) currentPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String text) confirmNewPasswordChanged,
    required TResult Function() saved,
  }) {
    return confirmNewPasswordChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? currentPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String text)? confirmNewPasswordChanged,
    TResult? Function()? saved,
  }) {
    return confirmNewPasswordChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? currentPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String text)? confirmNewPasswordChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (confirmNewPasswordChanged != null) {
      return confirmNewPasswordChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value)
        currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value)
        newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value)
        confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return confirmNewPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return confirmNewPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (confirmNewPasswordChanged != null) {
      return confirmNewPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmNewPasswordChangedEvent implements ChangePasswordEvent {
  const factory _ConfirmNewPasswordChangedEvent(final String text) =
      _$_ConfirmNewPasswordChangedEvent;

  String get text;
  @JsonKey(ignore: true)
  _$$_ConfirmNewPasswordChangedEventCopyWith<_$_ConfirmNewPasswordChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedEventCopyWith<$Res> {
  factory _$$_SavedEventCopyWith(
          _$_SavedEvent value, $Res Function(_$_SavedEvent) then) =
      __$$_SavedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedEventCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$_SavedEvent>
    implements _$$_SavedEventCopyWith<$Res> {
  __$$_SavedEventCopyWithImpl(
      _$_SavedEvent _value, $Res Function(_$_SavedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SavedEvent implements _SavedEvent {
  const _$_SavedEvent();

  @override
  String toString() {
    return 'ChangePasswordEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SavedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String text) currentPasswordChanged,
    required TResult Function(String text) newPasswordChanged,
    required TResult Function(String text) confirmNewPasswordChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String text)? currentPasswordChanged,
    TResult? Function(String text)? newPasswordChanged,
    TResult? Function(String text)? confirmNewPasswordChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String text)? currentPasswordChanged,
    TResult Function(String text)? newPasswordChanged,
    TResult Function(String text)? confirmNewPasswordChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value)
        currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value)
        newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value)
        confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)?
        currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)?
        confirmNewPasswordChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _SavedEvent implements ChangePasswordEvent {
  const factory _SavedEvent() = _$_SavedEvent;
}

/// @nodoc
mixin _$ChangePasswordState {
  ChangePasswordStatus get status => throw _privateConstructorUsedError;
  String get currentPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get newPasswordConfirm => throw _privateConstructorUsedError;
  bool get isCurrentPasswordMoreLength => throw _privateConstructorUsedError;
  bool get isNewPasswordMoreLength => throw _privateConstructorUsedError;
  bool get isPasswordHaveNumber => throw _privateConstructorUsedError;
  bool get isPasswordConfirm => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
  @useResult
  $Res call(
      {ChangePasswordStatus status,
      String currentPassword,
      String newPassword,
      String newPasswordConfirm,
      bool isCurrentPasswordMoreLength,
      bool isNewPasswordMoreLength,
      bool isPasswordHaveNumber,
      bool isPasswordConfirm,
      bool isValid,
      String? serverError});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? newPasswordConfirm = null,
    Object? isCurrentPasswordMoreLength = null,
    Object? isNewPasswordMoreLength = null,
    Object? isPasswordHaveNumber = null,
    Object? isPasswordConfirm = null,
    Object? isValid = null,
    Object? serverError = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChangePasswordStatus,
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPasswordConfirm: null == newPasswordConfirm
          ? _value.newPasswordConfirm
          : newPasswordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentPasswordMoreLength: null == isCurrentPasswordMoreLength
          ? _value.isCurrentPasswordMoreLength
          : isCurrentPasswordMoreLength // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewPasswordMoreLength: null == isNewPasswordMoreLength
          ? _value.isNewPasswordMoreLength
          : isNewPasswordMoreLength // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHaveNumber: null == isPasswordHaveNumber
          ? _value.isPasswordHaveNumber
          : isPasswordHaveNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordConfirm: null == isPasswordConfirm
          ? _value.isPasswordConfirm
          : isPasswordConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$_ChangePasswordStateCopyWith(_$_ChangePasswordState value,
          $Res Function(_$_ChangePasswordState) then) =
      __$$_ChangePasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChangePasswordStatus status,
      String currentPassword,
      String newPassword,
      String newPasswordConfirm,
      bool isCurrentPasswordMoreLength,
      bool isNewPasswordMoreLength,
      bool isPasswordHaveNumber,
      bool isPasswordConfirm,
      bool isValid,
      String? serverError});
}

/// @nodoc
class __$$_ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$_ChangePasswordState>
    implements _$$_ChangePasswordStateCopyWith<$Res> {
  __$$_ChangePasswordStateCopyWithImpl(_$_ChangePasswordState _value,
      $Res Function(_$_ChangePasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? newPasswordConfirm = null,
    Object? isCurrentPasswordMoreLength = null,
    Object? isNewPasswordMoreLength = null,
    Object? isPasswordHaveNumber = null,
    Object? isPasswordConfirm = null,
    Object? isValid = null,
    Object? serverError = freezed,
  }) {
    return _then(_$_ChangePasswordState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChangePasswordStatus,
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPasswordConfirm: null == newPasswordConfirm
          ? _value.newPasswordConfirm
          : newPasswordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentPasswordMoreLength: null == isCurrentPasswordMoreLength
          ? _value.isCurrentPasswordMoreLength
          : isCurrentPasswordMoreLength // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewPasswordMoreLength: null == isNewPasswordMoreLength
          ? _value.isNewPasswordMoreLength
          : isNewPasswordMoreLength // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordHaveNumber: null == isPasswordHaveNumber
          ? _value.isPasswordHaveNumber
          : isPasswordHaveNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordConfirm: null == isPasswordConfirm
          ? _value.isPasswordConfirm
          : isPasswordConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {this.status = ChangePasswordStatus.initial,
      required this.currentPassword,
      required this.newPassword,
      required this.newPasswordConfirm,
      this.isCurrentPasswordMoreLength = false,
      this.isNewPasswordMoreLength = false,
      this.isPasswordHaveNumber = false,
      this.isPasswordConfirm = false,
      this.isValid = false,
      this.serverError});

  @override
  @JsonKey()
  final ChangePasswordStatus status;
  @override
  final String currentPassword;
  @override
  final String newPassword;
  @override
  final String newPasswordConfirm;
  @override
  @JsonKey()
  final bool isCurrentPasswordMoreLength;
  @override
  @JsonKey()
  final bool isNewPasswordMoreLength;
  @override
  @JsonKey()
  final bool isPasswordHaveNumber;
  @override
  @JsonKey()
  final bool isPasswordConfirm;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? serverError;

  @override
  String toString() {
    return 'ChangePasswordState(status: $status, currentPassword: $currentPassword, newPassword: $newPassword, newPasswordConfirm: $newPasswordConfirm, isCurrentPasswordMoreLength: $isCurrentPasswordMoreLength, isNewPasswordMoreLength: $isNewPasswordMoreLength, isPasswordHaveNumber: $isPasswordHaveNumber, isPasswordConfirm: $isPasswordConfirm, isValid: $isValid, serverError: $serverError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.newPasswordConfirm, newPasswordConfirm) ||
                other.newPasswordConfirm == newPasswordConfirm) &&
            (identical(other.isCurrentPasswordMoreLength,
                    isCurrentPasswordMoreLength) ||
                other.isCurrentPasswordMoreLength ==
                    isCurrentPasswordMoreLength) &&
            (identical(
                    other.isNewPasswordMoreLength, isNewPasswordMoreLength) ||
                other.isNewPasswordMoreLength == isNewPasswordMoreLength) &&
            (identical(other.isPasswordHaveNumber, isPasswordHaveNumber) ||
                other.isPasswordHaveNumber == isPasswordHaveNumber) &&
            (identical(other.isPasswordConfirm, isPasswordConfirm) ||
                other.isPasswordConfirm == isPasswordConfirm) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.serverError, serverError) ||
                other.serverError == serverError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      currentPassword,
      newPassword,
      newPasswordConfirm,
      isCurrentPasswordMoreLength,
      isNewPasswordMoreLength,
      isPasswordHaveNumber,
      isPasswordConfirm,
      isValid,
      serverError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      __$$_ChangePasswordStateCopyWithImpl<_$_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {final ChangePasswordStatus status,
      required final String currentPassword,
      required final String newPassword,
      required final String newPasswordConfirm,
      final bool isCurrentPasswordMoreLength,
      final bool isNewPasswordMoreLength,
      final bool isPasswordHaveNumber,
      final bool isPasswordConfirm,
      final bool isValid,
      final String? serverError}) = _$_ChangePasswordState;

  @override
  ChangePasswordStatus get status;
  @override
  String get currentPassword;
  @override
  String get newPassword;
  @override
  String get newPasswordConfirm;
  @override
  bool get isCurrentPasswordMoreLength;
  @override
  bool get isNewPasswordMoreLength;
  @override
  bool get isPasswordHaveNumber;
  @override
  bool get isPasswordConfirm;
  @override
  bool get isValid;
  @override
  String? get serverError;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
