import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/logout_interactor.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required this.userRepository,
    required this.logoutInteractor,
  }) : super(const ProfileState.initial()) {
    on<_StartedEvent>(_onProfileLoaded);
    on<_LogoutEvent>(_onLogoutPushed);
  }

  final UserRepository userRepository;
  final LogoutInteractor logoutInteractor;

  FutureOr<void> _onProfileLoaded(
    _StartedEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState.initial());
    try {
      final user = await userRepository.getItem();
      if (user == null) {
        _logout(emit);
        return;
      }
      emit(ProfileState.loaded(user));
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
