import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/ui/pages/auth/forgot_password/model/errors.dart';

part 'forgot_password_event.dart';

part 'forgot_password_state.dart';

part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(this.authRepository)
      : super(
          const ForgotPasswordState(email: ''),
        ) {
    on<ForgotPasswordEvent>(
      (event, emit) => event.map(
        emailChanged: (event) => _onEmailChanged(event, emit),
        emailFocusLost: (event) => _onEmailFocusLost(event, emit),
        continued: (event) => _onContinued(event, emit),
        closedError: (event) => _onCloseError(event, emit),
      ),
    );
  }

  final IAuthRepository authRepository;

  FutureOr<void> _onEmailChanged(
    _EmailChangedEvent event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(email: event.text));
    _validateEmail(emit);
  }

  FutureOr<void> _onEmailFocusLost(
    _EmailFocusLostEvent event,
    Emitter<ForgotPasswordState> emit,
  ) {
    _validateEmail(emit);
  }

  FutureOr<void> _onContinued(
    _ContinuedEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ForgotPasswordStatus.loading));
    try {
      await authRepository.forgotPassword(email: state.email);
      emit(state.copyWith(status: ForgotPasswordStatus.success));
    } on DioError catch (dioError) {
      emit(state.copyWith(
        status: ForgotPasswordStatus.failure,
        serverError: dioErrorInterceptor(dioError).toString(),
      ));
    }
  }

  FutureOr<void> _onCloseError(
    final _ClosedErrorEvent event,
    final Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      serverError: null,
    ));
  }

  void _validateEmail(Emitter<ForgotPasswordState> emit) {
    if (state.email.isEmpty) {
      emit(state.copyWith(
        isValid: false,
        emailError: ForgotPasswordEmailError.empty,
      ));
      return;
    }
    if (!EmailValidator.validate(state.email)) {
      emit(state.copyWith(
        isValid: false,
        emailError: ForgotPasswordEmailError.invalid,
      ));
      return;
    }
    emit(state.copyWith(
      isValid: true,
      emailError: null,
    ));
    return;
  }
}
