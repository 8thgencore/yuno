import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/data/repository/token_repository.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({required this.tokenRepository}) : super(SplashInitial()) {
    on<SplashLoaded>(_onSplashLoaded);
  }

  final TokenRepository tokenRepository;

  FutureOr<void> _onSplashLoaded(
    final SplashLoaded event,
    final Emitter<SplashState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
    final token = await tokenRepository.getItem();
    print("TOKEK: $token");
    if (token == null || token.isEmpty) {
      emit(const SplashUnauthorized());
    } else {
      emit(const SplashAuthorized());
    }
  }
}