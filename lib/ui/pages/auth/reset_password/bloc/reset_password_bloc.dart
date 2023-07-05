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

  String _password = '';
  bool _highlightPasswordError = false;
  PasswordError? _passwordError = PasswordError.empty;

  String _passwordConfirm = '';
  bool _highlightPasswordConfirmError = false;
  PasswordConfirmError? _passwordConfirmError = PasswordConfirmError.empty;

  FutureOr<void> _onPasswordChanged(
    _PasswordChangedEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    _password = event.text;
    _passwordError = _validatePassword();
    _passwordConfirmError = _validateConfirmPassword();
    _calculateFieldsInfo(emit);
  }

  FutureOr<void> _onPasswordFocusLost(
    _PasswordFocusLostEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    _highlightPasswordError = true;
    _calculateFieldsInfo(emit);
  }

  FutureOr<void> _onPasswordConfirmChanged(
    _PasswordConfirmChangedEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    _passwordConfirm = event.text;
    _passwordConfirmError = _validateConfirmPassword();
    _calculateFieldsInfo(emit);
  }

  FutureOr<void> _onPasswordConfirmFocusLost(
    _PasswordConfirmFocusLostEvent event,
    Emitter<ResetPasswordState> emit,
  ) {
    _highlightPasswordConfirmError = true;
    _calculateFieldsInfo(emit);
  }

  FutureOr<void> _onContinued(
    _ContinuedEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ResetPasswordStatus.loading));
    try {
      _highlightPasswordError = true;
      _highlightPasswordConfirmError = true;
      _calculateFieldsInfo(emit);
      final haveError = _passwordError != null || _passwordConfirmError != null;
      if (haveError) {
        return;
      }

      await authRepository.resetPassword(password: state.password);
      emit(state.copyWith(status: ResetPasswordStatus.success));
    } on DioException catch (dioError) {
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

  PasswordError? _validatePassword() {
    if (_password.isEmpty) {
      return PasswordError.empty;
    }
    if (_password.length < 6) {
      return PasswordError.tooShort;
    }
    return null;
  }

  PasswordConfirmError? _validateConfirmPassword() {
    if (_passwordConfirm.isEmpty) {
      return PasswordConfirmError.empty;
    }
    if (_password != _passwordConfirm) {
      return PasswordConfirmError.different;
    }
    return null;
  }

  void _calculateFieldsInfo(Emitter<ResetPasswordState> emit) {
    emit(
      state.copyWith(
        password: _password,
        passwordError: _highlightPasswordError ? _passwordError : null,
        passwordConfirm: _passwordConfirm,
        passwordConfirmError: _highlightPasswordConfirmError ? _passwordConfirmError : null,
        isValid: _passwordError == null && _passwordConfirmError == null,
      ),
    );
  }
}
