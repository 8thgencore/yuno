import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';

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
    emit(const ProfileEditState.initial());
    try {
      // emit(ProfileEditState.loaded(user));
    } on Exception catch (e) {
      emit(ProfileEditState.failure(e));
    }
  }

  FutureOr<void> _onFirstNameChanged(
    _FirstNameChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    emit(const ProfileEditState.initial());
    try {
      // emit(ProfileEditState.loaded(user));
    } on Exception catch (e) {
      emit(ProfileEditState.failure(e));
    }
  }

  FutureOr<void> _onLastNameChanged(
    _LastNameChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    emit(const ProfileEditState.initial());
    try {
      // emit(ProfileEditState.loaded(user));
    } on Exception catch (e) {
      emit(ProfileEditState.failure(e));
    }
  }

  FutureOr<void> _onNicknameChanged(
    _NicknameChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    emit(const ProfileEditState.initial());
    try {
      // emit(ProfileEditState.loaded(user));
    } on Exception catch (e) {
      emit(ProfileEditState.failure(e));
    }
  }

  FutureOr<void> _onEmailChanged(
    _EmailChangedEvent event,
    Emitter<ProfileEditState> emit,
  ) async {
    emit(const ProfileEditState.initial());
    try {
      // emit(ProfileEditState.loaded(user));
    } on Exception catch (e) {
      emit(ProfileEditState.failure(e));
    }
  }
}
