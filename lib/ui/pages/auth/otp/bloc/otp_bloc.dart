import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_auth_repository.dart';

part 'otp_event.dart';

part 'otp_state.dart';

part 'otp_bloc.freezed.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc(this.authRepository)
      : super(
          const OtpState(otp: ''),
        ) {
    on<OtpEvent>(
      (event, emit) => event.map(
        otpChanged: (event) async => _onOtpChanged(event, emit),
        otpFocusLost: (event) async => _onOtpFocusLost(event, emit),
        continued: (event) async => _onContinued(event, emit),
        closedError: (event) async => _onCloseError(event, emit),
      ),
    );
  }

  final IAuthRepository authRepository;
  final List<String> _otpList = List<String>.filled(6, '');

  FutureOr<void> _onOtpChanged(
    _OtpChangedEvent event,
    Emitter<OtpState> emit,
  ) {
    _otpList[event.index] = event.text;
    emit(state.copyWith(otp: _otpList.join()));
    _validateOtp(emit);
  }

  FutureOr<void> _onOtpFocusLost(
    _OtpFocusLostEvent event,
    Emitter<OtpState> emit,
  ) {
    _validateOtp(emit);
  }

  FutureOr<void> _onContinued(
    _ContinuedEvent event,
    Emitter<OtpState> emit,
  ) async {
    emit(state.copyWith(status: OtpStatus.loading));
    try {
      await authRepository.sendOtp(otp: state.otp);
      emit(state.copyWith(status: OtpStatus.success, serverError: null));
    } on DioError catch (dioError) {
      emit(
        state.copyWith(
          status: OtpStatus.failure,
          serverError: dioErrorInterceptor(dioError).toString(),
        ),
      );
    }
  }

  FutureOr<void> _onCloseError(
    final _ClosedErrorEvent event,
    final Emitter<OtpState> emit,
  ) {
    emit(state.copyWith(serverError: null));
  }

  void _validateOtp(Emitter<OtpState> emit) {
    if (state.otp.length < 6) {
      emit(state.copyWith(isValid: false));
      return;
    }

    emit(state.copyWith(isValid: true));
    return;
  }
}
