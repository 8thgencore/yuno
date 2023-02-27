// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, int index) otpChanged,
    required TResult Function() otpFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, int index)? otpChanged,
    TResult? Function()? otpFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, int index)? otpChanged,
    TResult Function()? otpFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEventCopyWith<$Res> {
  factory $OtpEventCopyWith(OtpEvent value, $Res Function(OtpEvent) then) =
      _$OtpEventCopyWithImpl<$Res, OtpEvent>;
}

/// @nodoc
class _$OtpEventCopyWithImpl<$Res, $Val extends OtpEvent> implements $OtpEventCopyWith<$Res> {
  _$OtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OtpChangedEventCopyWith<$Res> {
  factory _$$_OtpChangedEventCopyWith(
          _$_OtpChangedEvent value, $Res Function(_$_OtpChangedEvent) then) =
      __$$_OtpChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, int index});
}

/// @nodoc
class __$$_OtpChangedEventCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$_OtpChangedEvent>
    implements _$$_OtpChangedEventCopyWith<$Res> {
  __$$_OtpChangedEventCopyWithImpl(
      _$_OtpChangedEvent _value, $Res Function(_$_OtpChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? index = null,
  }) {
    return _then(_$_OtpChangedEvent(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OtpChangedEvent implements _OtpChangedEvent {
  const _$_OtpChangedEvent(this.text, this.index);

  @override
  final String text;
  @override
  final int index;

  @override
  String toString() {
    return 'OtpEvent.otpChanged(text: $text, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpChangedEvent &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpChangedEventCopyWith<_$_OtpChangedEvent> get copyWith =>
      __$$_OtpChangedEventCopyWithImpl<_$_OtpChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, int index) otpChanged,
    required TResult Function() otpFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return otpChanged(text, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, int index)? otpChanged,
    TResult? Function()? otpFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return otpChanged?.call(text, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, int index)? otpChanged,
    TResult Function()? otpFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(text, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChangedEvent implements OtpEvent {
  const factory _OtpChangedEvent(final String text, final int index) = _$_OtpChangedEvent;

  String get text;
  int get index;
  @JsonKey(ignore: true)
  _$$_OtpChangedEventCopyWith<_$_OtpChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OtpFocusLostEventCopyWith<$Res> {
  factory _$$_OtpFocusLostEventCopyWith(
          _$_OtpFocusLostEvent value, $Res Function(_$_OtpFocusLostEvent) then) =
      __$$_OtpFocusLostEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OtpFocusLostEventCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$_OtpFocusLostEvent>
    implements _$$_OtpFocusLostEventCopyWith<$Res> {
  __$$_OtpFocusLostEventCopyWithImpl(
      _$_OtpFocusLostEvent _value, $Res Function(_$_OtpFocusLostEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OtpFocusLostEvent implements _OtpFocusLostEvent {
  const _$_OtpFocusLostEvent();

  @override
  String toString() {
    return 'OtpEvent.otpFocusLost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OtpFocusLostEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, int index) otpChanged,
    required TResult Function() otpFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return otpFocusLost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, int index)? otpChanged,
    TResult? Function()? otpFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return otpFocusLost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, int index)? otpChanged,
    TResult Function()? otpFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (otpFocusLost != null) {
      return otpFocusLost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return otpFocusLost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return otpFocusLost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult Function(_ContinuedEvent value)? continued,
    TResult Function(_ClosedErrorEvent value)? closedError,
    required TResult orElse(),
  }) {
    if (otpFocusLost != null) {
      return otpFocusLost(this);
    }
    return orElse();
  }
}

abstract class _OtpFocusLostEvent implements OtpEvent {
  const factory _OtpFocusLostEvent() = _$_OtpFocusLostEvent;
}

/// @nodoc
abstract class _$$_ContinuedEventCopyWith<$Res> {
  factory _$$_ContinuedEventCopyWith(
          _$_ContinuedEvent value, $Res Function(_$_ContinuedEvent) then) =
      __$$_ContinuedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContinuedEventCopyWithImpl<$Res> extends _$OtpEventCopyWithImpl<$Res, _$_ContinuedEvent>
    implements _$$_ContinuedEventCopyWith<$Res> {
  __$$_ContinuedEventCopyWithImpl(_$_ContinuedEvent _value, $Res Function(_$_ContinuedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContinuedEvent implements _ContinuedEvent {
  const _$_ContinuedEvent();

  @override
  String toString() {
    return 'OtpEvent.continued()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContinuedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, int index) otpChanged,
    required TResult Function() otpFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return continued();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, int index)? otpChanged,
    TResult? Function()? otpFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return continued?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, int index)? otpChanged,
    TResult Function()? otpFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (continued != null) {
      return continued();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return continued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return continued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
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

abstract class _ContinuedEvent implements OtpEvent {
  const factory _ContinuedEvent() = _$_ContinuedEvent;
}

/// @nodoc
abstract class _$$_ClosedErrorEventCopyWith<$Res> {
  factory _$$_ClosedErrorEventCopyWith(
          _$_ClosedErrorEvent value, $Res Function(_$_ClosedErrorEvent) then) =
      __$$_ClosedErrorEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClosedErrorEventCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$_ClosedErrorEvent>
    implements _$$_ClosedErrorEventCopyWith<$Res> {
  __$$_ClosedErrorEventCopyWithImpl(
      _$_ClosedErrorEvent _value, $Res Function(_$_ClosedErrorEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClosedErrorEvent implements _ClosedErrorEvent {
  const _$_ClosedErrorEvent();

  @override
  String toString() {
    return 'OtpEvent.closedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClosedErrorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, int index) otpChanged,
    required TResult Function() otpFocusLost,
    required TResult Function() continued,
    required TResult Function() closedError,
  }) {
    return closedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, int index)? otpChanged,
    TResult? Function()? otpFocusLost,
    TResult? Function()? continued,
    TResult? Function()? closedError,
  }) {
    return closedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, int index)? otpChanged,
    TResult Function()? otpFocusLost,
    TResult Function()? continued,
    TResult Function()? closedError,
    required TResult orElse(),
  }) {
    if (closedError != null) {
      return closedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChangedEvent value) otpChanged,
    required TResult Function(_OtpFocusLostEvent value) otpFocusLost,
    required TResult Function(_ContinuedEvent value) continued,
    required TResult Function(_ClosedErrorEvent value) closedError,
  }) {
    return closedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChangedEvent value)? otpChanged,
    TResult? Function(_OtpFocusLostEvent value)? otpFocusLost,
    TResult? Function(_ContinuedEvent value)? continued,
    TResult? Function(_ClosedErrorEvent value)? closedError,
  }) {
    return closedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChangedEvent value)? otpChanged,
    TResult Function(_OtpFocusLostEvent value)? otpFocusLost,
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

abstract class _ClosedErrorEvent implements OtpEvent {
  const factory _ClosedErrorEvent() = _$_ClosedErrorEvent;
}

/// @nodoc
mixin _$OtpState {
  String get otp => throw _privateConstructorUsedError;
  OtpStatus get status => throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpStateCopyWith<OtpState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
  @useResult
  $Res call({String otp, OtpStatus status, String? serverError, bool isValid});
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState> implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? status = null,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OtpStatus,
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
abstract class _$$_OtpStateCopyWith<$Res> implements $OtpStateCopyWith<$Res> {
  factory _$$_OtpStateCopyWith(_$_OtpState value, $Res Function(_$_OtpState) then) =
      __$$_OtpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, OtpStatus status, String? serverError, bool isValid});
}

/// @nodoc
class __$$_OtpStateCopyWithImpl<$Res> extends _$OtpStateCopyWithImpl<$Res, _$_OtpState>
    implements _$$_OtpStateCopyWith<$Res> {
  __$$_OtpStateCopyWithImpl(_$_OtpState _value, $Res Function(_$_OtpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? status = null,
    Object? serverError = freezed,
    Object? isValid = null,
  }) {
    return _then(_$_OtpState(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OtpStatus,
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

class _$_OtpState implements _OtpState {
  const _$_OtpState(
      {required this.otp, this.status = OtpStatus.initial, this.serverError, this.isValid = false});

  @override
  final String otp;
  @override
  @JsonKey()
  final OtpStatus status;
  @override
  final String? serverError;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'OtpState(otp: $otp, status: $status, serverError: $serverError, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpState &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.serverError, serverError) || other.serverError == serverError) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, status, serverError, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpStateCopyWith<_$_OtpState> get copyWith =>
      __$$_OtpStateCopyWithImpl<_$_OtpState>(this, _$identity);
}

abstract class _OtpState implements OtpState {
  const factory _OtpState(
      {required final String otp,
      final OtpStatus status,
      final String? serverError,
      final bool isValid}) = _$_OtpState;

  @override
  String get otp;
  @override
  OtpStatus get status;
  @override
  String? get serverError;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_OtpStateCopyWith<_$_OtpState> get copyWith => throw _privateConstructorUsedError;
}
