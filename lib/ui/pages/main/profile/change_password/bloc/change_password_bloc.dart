import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc({
    required this.authRepository,
  }) : super(
          const ChangePasswordState(
            currentPassword: '',
            newPassword: '',
            newPasswordConfirm: '',
          ),
        ) {
    on<ChangePasswordEvent>(
      (event, emit) => event.map(
        started: (event) async => _onLoaded(event, emit),
        currentPasswordChanged: (event) async => _onCurrentPasswordChanged(event, emit),
        newPasswordChanged: (event) async => _onNewPasswordChanged(event, emit),
        confirmNewPasswordChanged: (event) async => _onConfirmNewPasswordChanged(event, emit),
        saved: (event) async => _onSavedPassword(event, emit),
      ),
    );
  }

  final IAuthRepository authRepository;

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
    var isPasswordMoreLength = false;
    if (_isPasswordMoreLength(event.text)) {
      isPasswordMoreLength = true;
    }
    emit(
      state.copyWith(
        status: ChangePasswordStatus.loaded,
        currentPassword: event.text,
        isCurrentPasswordMoreLength: isPasswordMoreLength,
      ),
    );
    _isValid(emit);
  }

  FutureOr<void> _onNewPasswordChanged(
    _NewPasswordChangedEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    var isPasswordMoreLength = false;
    var isPasswordHaveNumber = false;
    if (_isPasswordMoreLength(event.text)) {
      isPasswordMoreLength = true;
    }
    if (_isPasswordHaveNumber(event.text)) {
      isPasswordHaveNumber = true;
    }
    emit(
      state.copyWith(
        status: ChangePasswordStatus.loaded,
        newPassword: event.text,
        isNewPasswordMoreLength: isPasswordMoreLength,
        isPasswordHaveNumber: isPasswordHaveNumber,
        isPasswordConfirm: _isPasswordConfirm(state.newPasswordConfirm, event.text),
      ),
    );
    _isValid(emit);
  }

  FutureOr<void> _onConfirmNewPasswordChanged(
    _ConfirmNewPasswordChangedEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ChangePasswordStatus.loaded,
        newPasswordConfirm: event.text,
        isPasswordConfirm: _isPasswordConfirm(state.newPassword, event.text),
      ),
    );
    _isValid(emit);
  }

  FutureOr<void> _onSavedPassword(
    _SavedEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    emit(state.copyWith(status: ChangePasswordStatus.loading));
    try {
      final result = await authRepository.changePassword(
        currentPassword: state.currentPassword,
        newPassword: state.newPassword,
      );
      if (result != null) {
        emit(state.copyWith(status: ChangePasswordStatus.success));
      } else {
        _showUnknownError(emit);
      }
    } on DioException catch (dioError) {
      emit(
        state.copyWith(
          status: ChangePasswordStatus.failure,
          serverError: dioErrorInterceptor(dioError).toString(),
        ),
      );
    }
  }

  bool _isPasswordMoreLength(String password) {
    if (password.length >= 6) {
      return true;
    } else {
      return false;
    }
  }

  bool _isPasswordHaveNumber(String password) {
    if (password.contains(RegExp(r'\d'))) {
      return true;
    } else {
      return false;
    }
  }

  bool _isPasswordConfirm(String firstPassword, String secondPassword) =>
      firstPassword == secondPassword && firstPassword.isNotEmpty;

  void _isValid(Emitter<ChangePasswordState> emit) {
    if (state.isCurrentPasswordMoreLength &
        state.isNewPasswordMoreLength &
        state.isPasswordHaveNumber &
        state.isPasswordConfirm) {
      emit(state.copyWith(isValid: true));
    } else {
      emit(state.copyWith(isValid: false));
    }
  }

  void _showUnknownError(Emitter<ChangePasswordState> emit) {
    emit(
      state.copyWith(
        status: ChangePasswordStatus.failure,
        serverError: 'Unknown error',
      ),
    );
  }
}
