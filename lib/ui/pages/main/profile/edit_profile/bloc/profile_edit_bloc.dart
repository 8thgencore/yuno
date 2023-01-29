import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:email_validator/email_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';
import 'package:yuno/ui/pages/main/profile/edit_profile/models/errors.dart';

part 'profile_edit_bloc.freezed.dart';
part 'profile_edit_event.dart';
part 'profile_edit_state.dart';

class ProfileEditBloc extends Bloc<ProfileEditEvent, ProfileEditState> {
  ProfileEditBloc({
    required this.apiUserRepository,
  }) : super(
          const ProfileEditState(
            status: ProfileEditStatus.initial,
            firstName: '',
            lastName: '',
            username: '',
            email: '',
          ),
        ) {
    on<ProfileEditEvent>(
      (event, emit) => event.map(
        started: (event) => _onProfileLoaded(event, emit),
        firstNameChanged: (event) => _onFirstNameChanged(event, emit),
        lastNameChanged: (event) => _onLastNameChanged(event, emit),
        usernameChanged: (event) => _onUsernameChanged(event, emit),
        emailChanged: (event) => _onEmailChanged(event, emit),
        saved: (event) => _onSaveProfile(event, emit),
      ),
      transformer: sequential(),
    );
  }

  final ApiUserRepository apiUserRepository;

  IUserRead? _user;

  bool _highlightNicknameError = false;
  ProfileEditNicknameError? _nicknameError;

  bool _highlightEmailError = false;
  ProfileEditEmailError? _emailError;

  FutureOr<void> _onProfileLoaded(
    _StartedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    emit(state.copyWith(status: ProfileEditStatus.loading));

    final user = await apiUserRepository.getCachedData();
    if (user != null) {
      _user = user;
      _emailError = _validateEmail();
      _nicknameError = _validateNickname();
      emit(state.copyWith(
        status: ProfileEditStatus.loaded,
        firstName: user.firstName,
        lastName: user.lastName,
        username: user.username,
        email: user.email,
        role: user.role?.name ?? '',
      ));
    } else {
      emit(state.copyWith(status: ProfileEditStatus.failure));
    }
  }

  FutureOr<void> _onSaveProfile(
    _SavedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    try {
      emit(state.copyWith(status: ProfileEditStatus.loading));
      _highlightEmailError = true;
      _highlightNicknameError = true;
      _calculateFieldsInfo(emit);
      final haveError = _emailError != null || _nicknameError != null;
      if (haveError) {
        emit(state.copyWith(status: ProfileEditStatus.loaded));
        return;
      }

      final result = await apiUserRepository.updateDataById(
        firstName: _user!.firstName,
        lastName: _user!.lastName,
        email: _user!.email,
        username: _user!.username,
      );
      emit(state.copyWith(status: ProfileEditStatus.loaded));
      if (result != null) {
        emit(state.copyWith(status: ProfileEditStatus.success));
      } else {
        _showUnknownError(emit);
      }
    } on DioError catch (dioError) {
      emit(state.copyWith(
        status: ProfileEditStatus.failure,
        serverError: dioErrorInterceptor(dioError).toString(),
      ));
    }
  }

  FutureOr<void> _onFirstNameChanged(
    _FirstNameChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    _user = _user!.copyWith(firstName: event.text);
  }

  FutureOr<void> _onLastNameChanged(
    _LastNameChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    _user = _user!.copyWith(lastName: event.text);
  }

  FutureOr<void> _onUsernameChanged(
    _UsernameChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    _user = _user!.copyWith(username: event.text);
    _nicknameError = _validateNickname();
  }

  FutureOr<void> _onEmailChanged(
    _EmailChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    _user = _user!.copyWith(email: event.text);
    _emailError = _validateEmail();
  }

  void _calculateFieldsInfo(Emitter<ProfileEditState> emit) {
    emit(state.copyWith(
      firstName: _user!.firstName,
      lastName: _user!.lastName,
      email: _user!.email,
      username: _user!.username,
      emailError: _highlightEmailError ? _emailError : null,
      nicknameError: _highlightNicknameError ? _nicknameError : null,
    ));
  }

  ProfileEditEmailError? _validateEmail() {
    if (_user!.email.isEmpty) {
      return ProfileEditEmailError.empty;
    }
    if (!EmailValidator.validate(_user!.email)) {
      return ProfileEditEmailError.invalid;
    }
    return null;
  }

  ProfileEditNicknameError? _validateNickname() {
    if (_user!.username.isEmpty) {
      return ProfileEditNicknameError.empty;
    }
    if (_user!.username.length < 3) {
      return ProfileEditNicknameError.tooShort;
    }
    return null;
  }

  void _showUnknownError(Emitter<ProfileEditState> emit) {
    emit(state.copyWith(
      status: ProfileEditStatus.failure,
      serverError: 'Unknown error',
    ));
  }
}
