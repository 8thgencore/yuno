// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetPasswordEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value)
        passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value)
        passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$PasswordChangedEventImpl implements _PasswordChangedEvent {
  const _$PasswordChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value)
        passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value)
        passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChangedEvent implements ResetPasswordEvent {
  const factory _PasswordChangedEvent(final String text) =
      _$PasswordChangedEventImpl;

  String get text;
}

/// @nodoc

class _$PasswordFocusLostEventImpl implements _PasswordFocusLostEvent {
  const _$PasswordFocusLostEventImpl();

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordFocusLost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordFocusLostEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value)
        passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value)
        passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return passwordFocusLost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return passwordFocusLost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (passwordFocusLost != null) {
      return passwordFocusLost(this);
    }
    return orElse();
  }
}

abstract class _PasswordFocusLostEvent implements ResetPasswordEvent {
  const factory _PasswordFocusLostEvent() = _$PasswordFocusLostEventImpl;
}

/// @nodoc

class _$PasswordConfirmChangedEventImpl
    implements _PasswordConfirmChangedEvent {
  const _$PasswordConfirmChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordConfirmChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordConfirmChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value)
        passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value)
        passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return passwordConfirmChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return passwordConfirmChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (passwordConfirmChanged != null) {
      return passwordConfirmChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordConfirmChangedEvent implements ResetPasswordEvent {
  const factory _PasswordConfirmChangedEvent(final String text) =
      _$PasswordConfirmChangedEventImpl;

  String get text;
}

/// @nodoc

class _$PasswordConfirmFocusLostEventImpl
    implements _PasswordConfirmFocusLostEvent {
  const _$PasswordConfirmFocusLostEventImpl();

  @override
  String toString() {
    return 'ResetPasswordEvent.passwordConfirmFocusLost()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordConfirmFocusLostEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value)
        passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value)
        passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return passwordConfirmFocusLost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return passwordConfirmFocusLost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (passwordConfirmFocusLost != null) {
      return passwordConfirmFocusLost(this);
    }
    return orElse();
  }
}

abstract class _PasswordConfirmFocusLostEvent implements ResetPasswordEvent {
  const factory _PasswordConfirmFocusLostEvent() =
      _$PasswordConfirmFocusLostEventImpl;
}

/// @nodoc

class _$ContinuedEventImpl implements _ContinuedEvent {
  const _$ContinuedEventImpl();

  @override
  String toString() {
    return 'ResetPasswordEvent.continued()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContinuedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value)
        passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value)
        passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return continued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return continued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (continued != null) {
      return continued(this);
    }
    return orElse();
  }
}

abstract class _ContinuedEvent implements ResetPasswordEvent {
  const factory _ContinuedEvent() = _$ContinuedEventImpl;
}

/// @nodoc

class _$ClosedErrorEventImpl implements _ClosedErrorEvent {
  const _$ClosedErrorEventImpl();

  @override
  String toString() {
    return 'ResetPasswordEvent.closedError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClosedErrorEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordChangedEvent value) passwordChanged,
    required TResult Function(_PasswordFocusLostEvent value) passwordFocusLost,
    required TResult Function(_PasswordConfirmChangedEvent value)
        passwordConfirmChanged,
    required TResult Function(_PasswordConfirmFocusLostEvent value)
        passwordConfirmFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return closedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordChangedEvent value)? passwordChanged,
    TResult? Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult? Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult? Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return closedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordChangedEvent value)? passwordChanged,
    TResult Function(_PasswordFocusLostEvent value)? passwordFocusLost,
    TResult Function(_PasswordConfirmChangedEvent value)?
        passwordConfirmChanged,
    TResult Function(_PasswordConfirmFocusLostEvent value)?
        passwordConfirmFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (closedError != null) {
      return closedError(this);
    }
    return orElse();
  }
}

abstract class _ClosedErrorEvent implements ResetPasswordEvent {
  const factory _ClosedErrorEvent() = _$ClosedErrorEventImpl;
}

/// @nodoc
mixin _$ResetPasswordState {
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;
  ResetPasswordStatus get status => throw _privateConstructorUsedError;
  PasswordError? get passwordError => throw _privateConstructorUsedError;
  PasswordConfirmError? get passwordConfirmError =>
      throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {String password,
      String passwordConfirm,
      ResetPasswordStatus status,
      PasswordError? passwordError,
      PasswordConfirmError? passwordConfirmError,
      String? serverError,
      bool isValid});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordConfirm = null,
    Object? status = null,
    Object? passwordError = freezed,
    Object? passwordConfirmError = freezed,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResetPasswordStatus,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as PasswordError?,
      passwordConfirmError: freezed == passwordConfirmError
          ? _value.passwordConfirmError
          : passwordConfirmError // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmError?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordStateImplCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$ResetPasswordStateImplCopyWith(_$ResetPasswordStateImpl value,
          $Res Function(_$ResetPasswordStateImpl) then) =
      __$$ResetPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String password,
      String passwordConfirm,
      ResetPasswordStatus status,
      PasswordError? passwordError,
      PasswordConfirmError? passwordConfirmError,
      String? serverError,
      bool isValid});
}

/// @nodoc
class __$$ResetPasswordStateImplCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$ResetPasswordStateImpl>
    implements _$$ResetPasswordStateImplCopyWith<$Res> {
  __$$ResetPasswordStateImplCopyWithImpl(_$ResetPasswordStateImpl _value,
      $Res Function(_$ResetPasswordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? passwordConfirm = null,
    Object? status = null,
    Object? passwordError = freezed,
    Object? passwordConfirmError = freezed,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_$ResetPasswordStateImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResetPasswordStatus,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as PasswordError?,
      passwordConfirmError: freezed == passwordConfirmError
          ? _value.passwordConfirmError
          : passwordConfirmError // ignore: cast_nullable_to_non_nullable
              as PasswordConfirmError?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ResetPasswordStateImpl implements _ResetPasswordState {
  const _$ResetPasswordStateImpl(
      {required this.password,
      required this.passwordConfirm,
      this.status = ResetPasswordStatus.initial,
      this.passwordError,
      this.passwordConfirmError,
      this.serverError,
      this.isValid = false});

  @override
  final String password;
  @override
  final String passwordConfirm;
  @override
  @JsonKey()
  final ResetPasswordStatus status;
  @override
  final PasswordError? passwordError;
  @override
  final PasswordConfirmError? passwordConfirmError;
  @override
  final String? serverError;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'ResetPasswordState(password: $password, passwordConfirm: $passwordConfirm, status: $status, passwordError: $passwordError, passwordConfirmError: $passwordConfirmError, serverError: $serverError, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordStateImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.passwordConfirmError, passwordConfirmError) ||
                other.passwordConfirmError == passwordConfirmError) &&
            (identical(other.serverError, serverError) ||
                other.serverError == serverError) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, passwordConfirm,
      status, passwordError, passwordConfirmError, serverError, isValid);

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordStateImplCopyWith<_$ResetPasswordStateImpl> get copyWith =>
      __$$ResetPasswordStateImplCopyWithImpl<_$ResetPasswordStateImpl>(
          this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {required final String password,
      required final String passwordConfirm,
      final ResetPasswordStatus status,
      final PasswordError? passwordError,
      final PasswordConfirmError? passwordConfirmError,
      final String? serverError,
      final bool isValid}) = _$ResetPasswordStateImpl;

  @override
  String get password;
  @override
  String get passwordConfirm;
  @override
  ResetPasswordStatus get status;
  @override
  PasswordError? get passwordError;
  @override
  PasswordConfirmError? get passwordConfirmError;
  @override
  String? get serverError;
  @override
  bool get isValid;

  /// Create a copy of ResetPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordStateImplCopyWith<_$ResetPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
