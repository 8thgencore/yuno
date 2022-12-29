import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/ui/pages/home/change_password/models/errors.dart';

part 'change_password_bloc.freezed.dart';

part 'change_password_event.dart';

part 'change_password_state.dart';

class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc({
    required this.apiAuthRepository,
  }) : super(
          const ChangePasswordState(
            currentPassword: '',
            newPassword: '',
            confirmNewPassword: '',
          ),
        ) {
    on<ChangePasswordEvent>(
      (event, emit) => event.map(
        started: (event) => _onLoaded(event, emit),
        currentPasswordChanged: (event) => _onCurrentPasswordChanged(event, emit),
        newPasswordChanged: (event) => _onNewPasswordChanged(event, emit),
        confirmNewPasswordChanged: (event) => _onConfirmNewPasswordChanged(event, emit),
        saved: (event) => _onSavedPassword(event, emit),
      ),
    );
  }

  final ApiAuthRepository apiAuthRepository;

  FutureOr<void> _onLoaded(
    _StartedEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(status: ChangePasswordStatus.loaded));
  }

  FutureOr<void> _onCurrentPasswordChanged(
    _CurrentPasswordChangedEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(currentPassword: event.text));
  }

  FutureOr<void> _onNewPasswordChanged(
    _NewPasswordChangedEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(newPassword: event.text));
  }

  FutureOr<void> _onConfirmNewPasswordChanged(
    _ConfirmNewPasswordChangedEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(confirmNewPassword: event.text));
  }

  FutureOr<void> _onSavedPassword(
    _SavedEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(status: ChangePasswordStatus.loading));
    try {
      final confirm = await apiAuthRepository.changePassword(
        currentPassword: state.currentPassword,
        newPassword: state.newPassword,
      );
      if (confirm == null) {
        emit(state.copyWith(status: ChangePasswordStatus.success));
      } else {
        emit(state.copyWith(status: ChangePasswordStatus.failure));
      }
    } on Exception catch (_) {
      emit(state.copyWith(status: ChangePasswordStatus.failure));
    }
  }
}
