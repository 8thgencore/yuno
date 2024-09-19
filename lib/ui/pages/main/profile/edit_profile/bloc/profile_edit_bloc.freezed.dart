// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEditEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_DeleteMyAccountEvent value) deleteMyAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_DeleteMyAccountEvent value)? deleteMyAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_DeleteMyAccountEvent value)? deleteMyAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$StartedEventImpl implements _StartedEvent {
  const _$StartedEventImpl();

  @override
  String toString() {
    return 'ProfileEditEvent.started()';
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
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_DeleteMyAccountEvent value) deleteMyAccount,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_DeleteMyAccountEvent value)? deleteMyAccount,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_DeleteMyAccountEvent value)? deleteMyAccount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements ProfileEditEvent {
  const factory _StartedEvent() = _$StartedEventImpl;
}

/// @nodoc

class _$FirstNameChangedEventImpl implements _FirstNameChangedEvent {
  const _$FirstNameChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEditEvent.firstNameChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_DeleteMyAccountEvent value) deleteMyAccount,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_DeleteMyAccountEvent value)? deleteMyAccount,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_DeleteMyAccountEvent value)? deleteMyAccount,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChangedEvent implements ProfileEditEvent {
  const factory _FirstNameChangedEvent(final String text) =
      _$FirstNameChangedEventImpl;

  String get text;
}

/// @nodoc

class _$LastNameChangedEventImpl implements _LastNameChangedEvent {
  const _$LastNameChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEditEvent.lastNameChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_DeleteMyAccountEvent value) deleteMyAccount,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_DeleteMyAccountEvent value)? deleteMyAccount,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_DeleteMyAccountEvent value)? deleteMyAccount,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChangedEvent implements ProfileEditEvent {
  const factory _LastNameChangedEvent(final String text) =
      _$LastNameChangedEventImpl;

  String get text;
}

/// @nodoc

class _$UsernameChangedEventImpl implements _UsernameChangedEvent {
  const _$UsernameChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEditEvent.usernameChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_DeleteMyAccountEvent value) deleteMyAccount,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_DeleteMyAccountEvent value)? deleteMyAccount,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_DeleteMyAccountEvent value)? deleteMyAccount,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChangedEvent implements ProfileEditEvent {
  const factory _UsernameChangedEvent(final String text) =
      _$UsernameChangedEventImpl;

  String get text;
}

/// @nodoc

class _$EmailChangedEventImpl implements _EmailChangedEvent {
  const _$EmailChangedEventImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'ProfileEditEvent.emailChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_DeleteMyAccountEvent value) deleteMyAccount,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_DeleteMyAccountEvent value)? deleteMyAccount,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_DeleteMyAccountEvent value)? deleteMyAccount,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChangedEvent implements ProfileEditEvent {
  const factory _EmailChangedEvent(final String text) = _$EmailChangedEventImpl;

  String get text;
}

/// @nodoc

class _$SavedEventImpl implements _SavedEvent {
  const _$SavedEventImpl();

  @override
  String toString() {
    return 'ProfileEditEvent.saved()';
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
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_DeleteMyAccountEvent value) deleteMyAccount,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_DeleteMyAccountEvent value)? deleteMyAccount,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_DeleteMyAccountEvent value)? deleteMyAccount,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _SavedEvent implements ProfileEditEvent {
  const factory _SavedEvent() = _$SavedEventImpl;
}

/// @nodoc

class _$DeleteMyAccountEventImpl implements _DeleteMyAccountEvent {
  const _$DeleteMyAccountEventImpl();

  @override
  String toString() {
    return 'ProfileEditEvent.deleteMyAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMyAccountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_FirstNameChangedEvent value) firstNameChanged,
    required TResult Function(_LastNameChangedEvent value) lastNameChanged,
    required TResult Function(_UsernameChangedEvent value) usernameChanged,
    required TResult Function(_EmailChangedEvent value) emailChanged,
    required TResult Function(_SavedEvent value) saved,
    required TResult Function(_DeleteMyAccountEvent value) deleteMyAccount,
  }) {
    return deleteMyAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? started,
    TResult? Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult? Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult? Function(_UsernameChangedEvent value)? usernameChanged,
    TResult? Function(_EmailChangedEvent value)? emailChanged,
    TResult? Function(_SavedEvent value)? saved,
    TResult? Function(_DeleteMyAccountEvent value)? deleteMyAccount,
  }) {
    return deleteMyAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_FirstNameChangedEvent value)? firstNameChanged,
    TResult Function(_LastNameChangedEvent value)? lastNameChanged,
    TResult Function(_UsernameChangedEvent value)? usernameChanged,
    TResult Function(_EmailChangedEvent value)? emailChanged,
    TResult Function(_SavedEvent value)? saved,
    TResult Function(_DeleteMyAccountEvent value)? deleteMyAccount,
    required TResult orElse(),
  }) {
    if (deleteMyAccount != null) {
      return deleteMyAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteMyAccountEvent implements ProfileEditEvent {
  const factory _DeleteMyAccountEvent() = _$DeleteMyAccountEventImpl;
}

/// @nodoc
mixin _$ProfileEditState {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  ProfileEditStatus get status => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  ProfileEditEmailError? get emailError => throw _privateConstructorUsedError;
  ProfileEditUsernameError? get usernameError =>
      throw _privateConstructorUsedError;
  String? get serverError => throw _privateConstructorUsedError;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileEditStateCopyWith<ProfileEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditStateCopyWith<$Res> {
  factory $ProfileEditStateCopyWith(
          ProfileEditState value, $Res Function(ProfileEditState) then) =
      _$ProfileEditStateCopyWithImpl<$Res, ProfileEditState>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String email,
      ProfileEditStatus status,
      String? role,
      ProfileEditEmailError? emailError,
      ProfileEditUsernameError? usernameError,
      String? serverError});
}

/// @nodoc
class _$ProfileEditStateCopyWithImpl<$Res, $Val extends ProfileEditState>
    implements $ProfileEditStateCopyWith<$Res> {
  _$ProfileEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? status = null,
    Object? role = freezed,
    Object? emailError = freezed,
    Object? usernameError = freezed,
    Object? serverError = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileEditStatus,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ProfileEditEmailError?,
      usernameError: freezed == usernameError
          ? _value.usernameError
          : usernameError // ignore: cast_nullable_to_non_nullable
              as ProfileEditUsernameError?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileEditStateImplCopyWith<$Res>
    implements $ProfileEditStateCopyWith<$Res> {
  factory _$$ProfileEditStateImplCopyWith(_$ProfileEditStateImpl value,
          $Res Function(_$ProfileEditStateImpl) then) =
      __$$ProfileEditStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String email,
      ProfileEditStatus status,
      String? role,
      ProfileEditEmailError? emailError,
      ProfileEditUsernameError? usernameError,
      String? serverError});
}

/// @nodoc
class __$$ProfileEditStateImplCopyWithImpl<$Res>
    extends _$ProfileEditStateCopyWithImpl<$Res, _$ProfileEditStateImpl>
    implements _$$ProfileEditStateImplCopyWith<$Res> {
  __$$ProfileEditStateImplCopyWithImpl(_$ProfileEditStateImpl _value,
      $Res Function(_$ProfileEditStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
    Object? status = null,
    Object? role = freezed,
    Object? emailError = freezed,
    Object? usernameError = freezed,
    Object? serverError = freezed,
  }) {
    return _then(_$ProfileEditStateImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileEditStatus,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ProfileEditEmailError?,
      usernameError: freezed == usernameError
          ? _value.usernameError
          : usernameError // ignore: cast_nullable_to_non_nullable
              as ProfileEditUsernameError?,
      serverError: freezed == serverError
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileEditStateImpl implements _ProfileEditState {
  const _$ProfileEditStateImpl(
      {required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      this.status = ProfileEditStatus.initial,
      this.role,
      this.emailError,
      this.usernameError,
      this.serverError});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final String email;
  @override
  @JsonKey()
  final ProfileEditStatus status;
  @override
  final String? role;
  @override
  final ProfileEditEmailError? emailError;
  @override
  final ProfileEditUsernameError? usernameError;
  @override
  final String? serverError;

  @override
  String toString() {
    return 'ProfileEditState(firstName: $firstName, lastName: $lastName, username: $username, email: $email, status: $status, role: $role, emailError: $emailError, usernameError: $usernameError, serverError: $serverError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEditStateImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.usernameError, usernameError) ||
                other.usernameError == usernameError) &&
            (identical(other.serverError, serverError) ||
                other.serverError == serverError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, username,
      email, status, role, emailError, usernameError, serverError);

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEditStateImplCopyWith<_$ProfileEditStateImpl> get copyWith =>
      __$$ProfileEditStateImplCopyWithImpl<_$ProfileEditStateImpl>(
          this, _$identity);
}

abstract class _ProfileEditState implements ProfileEditState {
  const factory _ProfileEditState(
      {required final String firstName,
      required final String lastName,
      required final String username,
      required final String email,
      final ProfileEditStatus status,
      final String? role,
      final ProfileEditEmailError? emailError,
      final ProfileEditUsernameError? usernameError,
      final String? serverError}) = _$ProfileEditStateImpl;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get username;
  @override
  String get email;
  @override
  ProfileEditStatus get status;
  @override
  String? get role;
  @override
  ProfileEditEmailError? get emailError;
  @override
  ProfileEditUsernameError? get usernameError;
  @override
  String? get serverError;

  /// Create a copy of ProfileEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileEditStateImplCopyWith<_$ProfileEditStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
