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
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value) currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value) newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value) confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
    TResult Function(_SavedEvent value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$StartedEventImpl implements _StartedEvent {
  const _$StartedEventImpl();

  @override
  String toString() {
    return 'ChangePasswordEvent.started()';
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
    required TResult Function(_CurrentPasswordChangedEvent value) currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value) newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value) confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
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
  const factory _StartedEvent() = _$StartedEventImpl;
}

/// @nodoc

class _$CurrentPasswordChangedEventImpl implements _CurrentPasswordChangedEvent {
  const _$CurrentPasswordChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChangePasswordEvent.currentPasswordChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentPasswordChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value) currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value) newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value) confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return currentPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return currentPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
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
  const factory _CurrentPasswordChangedEvent(final String text) = _$CurrentPasswordChangedEventImpl;

  String get text;
}

/// @nodoc

class _$NewPasswordChangedEventImpl implements _NewPasswordChangedEvent {
  const _$NewPasswordChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value) currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value) newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value) confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return newPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
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
  const factory _NewPasswordChangedEvent(final String text) = _$NewPasswordChangedEventImpl;

  String get text;
}

/// @nodoc

class _$ConfirmNewPasswordChangedEventImpl implements _ConfirmNewPasswordChangedEvent {
  const _$ConfirmNewPasswordChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ChangePasswordEvent.confirmNewPasswordChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmNewPasswordChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_CurrentPasswordChangedEvent value) currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value) newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value) confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return confirmNewPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return confirmNewPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
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
      _$ConfirmNewPasswordChangedEventImpl;

  String get text;
}

/// @nodoc

class _$SavedEventImpl implements _SavedEvent {
  const _$SavedEventImpl();

  @override
  String toString() {
    return 'ChangePasswordEvent.saved()';
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
    required TResult Function(_CurrentPasswordChangedEvent value) currentPasswordChanged,
    required TResult Function(_NewPasswordChangedEvent value) newPasswordChanged,
    required TResult Function(_ConfirmNewPasswordChangedEvent value) confirmNewPasswordChanged,
    required TResult Function(_SavedEvent value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult? Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult? Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
    TResult? Function(_SavedEvent value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_CurrentPasswordChangedEvent value)? currentPasswordChanged,
    TResult Function(_NewPasswordChangedEvent value)? newPasswordChanged,
    TResult Function(_ConfirmNewPasswordChangedEvent value)? confirmNewPasswordChanged,
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
  const factory _SavedEvent() = _$SavedEventImpl;
}

/// @nodoc
mixin _$ChangePasswordState {
  String get currentPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get newPasswordConfirm => throw _privateConstructorUsedError;
  ChangePasswordStatus get status => throw _privateConstructorUsedError;
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
      {String currentPassword,
      String newPassword,
      String newPasswordConfirm,
      ChangePasswordStatus status,
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
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? newPasswordConfirm = null,
    Object? status = null,
    Object? isCurrentPasswordMoreLength = null,
    Object? isNewPasswordMoreLength = null,
    Object? isPasswordHaveNumber = null,
    Object? isPasswordConfirm = null,
    Object? isValid = null,
    Object? serverError = freezed,
  }) {
    return _then(_value.copyWith(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChangePasswordStatus,
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
abstract class _$$ChangePasswordStateImplCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$ChangePasswordStateImplCopyWith(
          _$ChangePasswordStateImpl value, $Res Function(_$ChangePasswordStateImpl) then) =
      __$$ChangePasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String currentPassword,
      String newPassword,
      String newPasswordConfirm,
      ChangePasswordStatus status,
      bool isCurrentPasswordMoreLength,
      bool isNewPasswordMoreLength,
      bool isPasswordHaveNumber,
      bool isPasswordConfirm,
      bool isValid,
      String? serverError});
}

/// @nodoc
class __$$ChangePasswordStateImplCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$ChangePasswordStateImpl>
    implements _$$ChangePasswordStateImplCopyWith<$Res> {
  __$$ChangePasswordStateImplCopyWithImpl(
      _$ChangePasswordStateImpl _value, $Res Function(_$ChangePasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? newPasswordConfirm = null,
    Object? status = null,
    Object? isCurrentPasswordMoreLength = null,
    Object? isNewPasswordMoreLength = null,
    Object? isPasswordHaveNumber = null,
    Object? isPasswordConfirm = null,
    Object? isValid = null,
    Object? serverError = freezed,
  }) {
    return _then(_$ChangePasswordStateImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChangePasswordStatus,
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

class _$ChangePasswordStateImpl implements _ChangePasswordState {
  const _$ChangePasswordStateImpl(
      {required this.currentPassword,
      required this.newPassword,
      required this.newPasswordConfirm,
      this.status = ChangePasswordStatus.initial,
      this.isCurrentPasswordMoreLength = false,
      this.isNewPasswordMoreLength = false,
      this.isPasswordHaveNumber = false,
      this.isPasswordConfirm = false,
      this.isValid = false,
      this.serverError});

  @override
  final String currentPassword;
  @override
  final String newPassword;
  @override
  final String newPasswordConfirm;
  @override
  @JsonKey()
  final ChangePasswordStatus status;
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
    return 'ChangePasswordState(currentPassword: $currentPassword, newPassword: $newPassword, newPasswordConfirm: $newPasswordConfirm, status: $status, isCurrentPasswordMoreLength: $isCurrentPasswordMoreLength, isNewPasswordMoreLength: $isNewPasswordMoreLength, isPasswordHaveNumber: $isPasswordHaveNumber, isPasswordConfirm: $isPasswordConfirm, isValid: $isValid, serverError: $serverError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordStateImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) || other.newPassword == newPassword) &&
            (identical(other.newPasswordConfirm, newPasswordConfirm) ||
                other.newPasswordConfirm == newPasswordConfirm) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isCurrentPasswordMoreLength, isCurrentPasswordMoreLength) ||
                other.isCurrentPasswordMoreLength == isCurrentPasswordMoreLength) &&
            (identical(other.isNewPasswordMoreLength, isNewPasswordMoreLength) ||
                other.isNewPasswordMoreLength == isNewPasswordMoreLength) &&
            (identical(other.isPasswordHaveNumber, isPasswordHaveNumber) ||
                other.isPasswordHaveNumber == isPasswordHaveNumber) &&
            (identical(other.isPasswordConfirm, isPasswordConfirm) ||
                other.isPasswordConfirm == isPasswordConfirm) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.serverError, serverError) || other.serverError == serverError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPassword,
      newPassword,
      newPasswordConfirm,
      status,
      isCurrentPasswordMoreLength,
      isNewPasswordMoreLength,
      isPasswordHaveNumber,
      isPasswordConfirm,
      isValid,
      serverError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      __$$ChangePasswordStateImplCopyWithImpl<_$ChangePasswordStateImpl>(this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {required final String currentPassword,
      required final String newPassword,
      required final String newPasswordConfirm,
      final ChangePasswordStatus status,
      final bool isCurrentPasswordMoreLength,
      final bool isNewPasswordMoreLength,
      final bool isPasswordHaveNumber,
      final bool isPasswordConfirm,
      final bool isValid,
      final String? serverError}) = _$ChangePasswordStateImpl;

  @override
  String get currentPassword;
  @override
  String get newPassword;
  @override
  String get newPasswordConfirm;
  @override
  ChangePasswordStatus get status;
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
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
