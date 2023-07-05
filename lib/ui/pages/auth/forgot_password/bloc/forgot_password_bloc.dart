import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';
import 'package:yuno/ui/models/auth_errors.dart';

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
        emailChanged: (event) async => _onEmailChanged(event, emit),
        emailFocusLost: (event) async => _onEmailFocusLost(event, emit),
        continued: (event) async => _onContinued(event, emit),
        closedError: (event) async => _onCloseError(event, emit),
      ),
    );
  }

  final IAuthRepository authRepository;

  String _email = '';
  bool _highlightEmailError = false;
  EmailError? _emailError = EmailError.empty;

  FutureOr<void> _onEmailChanged(
    _EmailChangedEvent event,
    Emitter<ForgotPasswordState> emit,
  ) {
    _email = event.text;
    _emailError = _validateEmail();
    _calculateFieldsInfo(emit);
  }

  FutureOr<void> _onEmailFocusLost(
    _EmailFocusLostEvent event,
    Emitter<ForgotPasswordState> emit,
  ) {
    _highlightEmailError = true;
    _calculateFieldsInfo(emit);
  }

  FutureOr<void> _onContinued(
    _ContinuedEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(status: ForgotPasswordStatus.loading));
    try {
      _highlightEmailError = true;
      _calculateFieldsInfo(emit);
      final haveError = _emailError != null;
      if (haveError) {
        return;
      }

      await authRepository.forgotPassword(email: state.email);
      emit(state.copyWith(status: ForgotPasswordStatus.success));
    } on DioException catch (dioError) {
      emit(
        state.copyWith(
          status: ForgotPasswordStatus.failure,
          serverError: dioErrorInterceptor(dioError).toString(),
        ),
      );
    }
  }

  FutureOr<void> _onCloseError(
    final _ClosedErrorEvent event,
    final Emitter<ForgotPasswordState> emit,
  ) {
    // ignore: require_trailing_commas
    emit(state.copyWith(serverError: null));
  }

  EmailError? _validateEmail() {
    if (_email.isEmpty) {
      return EmailError.empty;
    }
    if (!EmailValidator.validate(_email)) {
      return EmailError.invalid;
    }
    return null;
  }

  void _calculateFieldsInfo(Emitter<ForgotPasswordState> emit) {
    emit(
      state.copyWith(
        status: ForgotPasswordStatus.initial,
        email: _email,
        emailError: _highlightEmailError ? _emailError : null,
        isValid: _emailError == null,
      ),
    );
  }
}
