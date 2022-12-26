import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/ui/home/edit_profile/models/errors.dart';

part 'profile_edit_bloc.freezed.dart';

part 'profile_edit_event.dart';

part 'profile_edit_state.dart';

class ProfileEditBloc extends Bloc<ProfileEditEvent, ProfileEditState> {
  ProfileEditBloc({
    required this.apiUserRepository,
    required this.userRepository,
  }) : super(const ProfileEditState.initial()) {
    on<_StartedEvent>(_onProfileLoaded);
    on<_SavedEvent>(_onSaveProfile);
    on<_FirstNameChangedEvent>(_onFirstNameChanged);
    on<_LastNameChangedEvent>(_onLastNameChanged);
    on<_NicknameChangedEvent>(_onNicknameChanged);
    on<_EmailChangedEvent>(_onEmailChanged);
  }

  final ApiUserRepository apiUserRepository;
  final UserRepository userRepository;

  String _firstName = '';

  String _lastName = '';

  String _nickname = '';
  bool _highlightNicknameError = false;
  ProfileEditNicknameError? _nicknameError = ProfileEditNicknameError.empty;

  String _email = '';
  bool _highlightEmailError = false;
  ProfileEditEmailError? _emailError = ProfileEditEmailError.empty;

  bool _highlightServerError = false;
  String? _serverError;

  FutureOr<void> _onProfileLoaded(
    _StartedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    emit(const ProfileEditState.initial());
    try {
      final user = await apiUserRepository.getData();
      if (user is IUserRead) {
        emit(ProfileEditState.loaded(user));
      } else {
        emit(ProfileEditState.failure(user.toString()));
      }
    } on Exception catch (e) {
      emit(ProfileEditState.failure(e));
    }
  }

  FutureOr<void> _onSaveProfile(
    _SavedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    _highlightEmailError = true;
    _highlightNicknameError = true;
    emit(_calculateFieldsInfo());
    final haveError = _emailError != null || _nicknameError != null;
    if (haveError) {
      return;
    }
    emit(const ProfileEditState.loading());
    // emit(ProfileEditState.loaded(user));
  }

  FutureOr<void> _onFirstNameChanged(
    _FirstNameChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    _firstName = event.text;
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onLastNameChanged(
    _LastNameChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    _lastName = event.text;
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onNicknameChanged(
    _NicknameChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    _nickname = event.text;
    _nicknameError = _validateNickname();
    emit(_calculateFieldsInfo());
  }

  FutureOr<void> _onEmailChanged(
    _EmailChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    _email = event.text;
    _emailError = _validateEmail();
    emit(_calculateFieldsInfo());
  }

  ProfileEditState _calculateFieldsInfo() {
    return ProfileEditState.fieldsInfo(
      emailError: _highlightEmailError ? _emailError : null,
      nicknameError: _highlightNicknameError ? _nicknameError : null,
      serverError: _highlightServerError ? _serverError : null,
    );
  }

  ProfileEditEmailError? _validateEmail() {
    if (_email.isEmpty) {
      return ProfileEditEmailError.empty;
    }
    if (!EmailValidator.validate(_email)) {
      return ProfileEditEmailError.invalid;
    }
    return null;
  }

  ProfileEditNicknameError? _validateNickname() {
    if (_nickname.isEmpty) {
      return ProfileEditNicknameError.empty;
    }
    if (_nickname.length < 3) {
      return ProfileEditNicknameError.tooShort;
    }
    return null;
  }
}
