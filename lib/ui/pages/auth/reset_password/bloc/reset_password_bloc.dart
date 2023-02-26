import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/ui/models/auth_errors.dart';

part 'reset_password_event.dart';

part 'reset_password_state.dart';

part 'reset_password_bloc.freezed.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc(this.authRepository)
      : super(
          const ResetPasswordState(password: '', passwordConfirm: ''),
        ) {
    on<ResetPasswordEvent>(
      (event, emit) => event.map(
        passwordChanged: (event) async => _onPasswordChanged(event, emit),
        passwordFocusLost: (event) async => _onPasswordFocusLost(event, emit),
        passwordConfirmChanged: (event) async => _onPasswordConfirmChanged(event, emit),
        passwordConfirmFocusLost: (event) async => _onPasswordConfirmFocusLost(event, emit),
        continued: (event) async => _onContinued(event, emit),
        closedError: (event) async => _onCloseError(event, emit),
      ),
    );
  }

  final IAuthRepository authRepository;

  FutureOr<void> _onPasswordChanged(
    _PasswordChangedEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(
      password: event.text,
      passwordError: _validatePassword(event.text),
    ));
    _calculateValid(emit);
  }

  FutureOr<void> _onPasswordFocusLost(
    _PasswordFocusLostEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(
      passwordError: _validatePassword(state.password),
    ));
    _calculateValid(emit);
  }

  FutureOr<void> _onPasswordConfirmChanged(
    _PasswordConfirmChangedEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(
      passwordConfirm: event.text,
      passwordConfirmError: _validateConfirmPassword(event.text),
    ));
    _calculateValid(emit);
  }

  FutureOr<void> _onPasswordConfirmFocusLost(
    _PasswordConfirmFocusLostEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(
      passwordConfirmError: _validateConfirmPassword(state.passwordConfirm),
    ));
    _calculateValid(emit);
  }

  FutureOr<void> _onContinued(
    _ContinuedEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ResetPasswordStatus.loading));
    try {
      await authRepository.resetPassword(password: state.password);
      emit(state.copyWith(status: ResetPasswordStatus.success));
    } on DioError catch (dioError) {
      emit(
        state.copyWith(
          status: ResetPasswordStatus.failure,
          serverError: dioErrorInterceptor(dioError).toString(),
        ),
      );
    }
  }

  FutureOr<void> _onCloseError(
    final _ClosedErrorEvent event,
    final Emitter<ResetPasswordState> emit,
  ) {
    emit(state.copyWith(serverError: null));
  }

  PasswordError? _validatePassword(String password) {
    if (password.isEmpty) {
      return PasswordError.empty;
    }
    if (password.length < 6) {
      return PasswordError.tooShort;
    }
    return null;
  }

  PasswordConfirmError? _validateConfirmPassword(String passwordConfirm) {
    if (passwordConfirm.isEmpty) {
      return PasswordConfirmError.empty;
    }
    if (state.password != passwordConfirm) {
      return PasswordConfirmError.different;
    }
    return null;
  }

  void _calculateValid(Emitter<ResetPasswordState> emit) {
    final isValid = state.passwordError == null && state.passwordConfirmError == null;
    emit(state.copyWith(isValid: isValid));
  }
}
