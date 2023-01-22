import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/auth/models/refresh_token.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/data/repository/refresh_token_repository.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/logout_interactor.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required this.apiAuthRepository,
    required this.apiUserRepository,
    required this.userRepository,
    required this.refreshTokenRepository,
    required this.logoutInteractor,
  }) : super(const ProfileState.initial()) {
    on<_StartedEvent>(_onProfileLoaded);
    on<_UpdateEvent>(_onProfileUpdated);
    on<_LoadImageEvent>(_onLoadImage);
    on<_LogoutEvent>(_onLogoutPushed);
  }

  final ApiAuthRepository apiAuthRepository;
  final ApiUserRepository apiUserRepository;
  final UserRepository userRepository;
  final RefreshTokenRepository refreshTokenRepository;
  final LogoutInteractor logoutInteractor;

  IUserRead? _user;


  FutureOr<void> _onProfileLoaded(
    _StartedEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    try {
      final user = await userRepository.getItem();
      final refreshToken = await refreshTokenRepository.getItem();
      if (user == null || refreshToken == null) {
        _logout(emit);
        return;
      }
      _user = user;

      final refreshTokenResponse = await apiAuthRepository.refreshToken(
        body: RefreshToken(refreshToken: refreshToken),
      );
      if (refreshTokenResponse != null) {
        _logout(emit);
        return;
      }

      emit(ProfileState.loaded(user, null));
    } on Exception catch (e) {
      emit(ProfileState.failure(e));
    }
  }

  FutureOr<void> _onProfileUpdated(
    _UpdateEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.loading());
    try {
      final user = await userRepository.getItem();
      if (user == null) {
        return;
      }
      _user = user;

      emit(ProfileState.loaded(user, null));
    } on Exception catch (e) {
      emit(ProfileState.failure(e));
    }
  }

  FutureOr<void> _onLoadImage(
    _LoadImageEvent event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      final user = await apiUserRepository.loadImage(file: event.file);
      if (user is IUserRead) {
        emit(ProfileState.loaded(user, null));
        return;
      }
      emit(ProfileState.loaded(_user!, 'Error from server. Try again'));
    } on Exception catch (e) {
      emit(ProfileState.failure(e));
    }
  }

  void _logout(Emitter<ProfileState> emit) {
    emit(const ProfileState.logout());
  }

  FutureOr<void> _onLogoutPushed(
    _LogoutEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await logoutInteractor.logout();
    _logout(emit);
  }
}
