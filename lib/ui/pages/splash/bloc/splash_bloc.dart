import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/data/repository/token_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({required this.apiUserRepository,required this.tokenRepository,}) : super(SplashInitial()) {
    on<SplashLoaded>(_onSplashLoaded);
  }

  final TokenRepository tokenRepository;
  final ApiUserRepository apiUserRepository;

  FutureOr<void> _onSplashLoaded(
    final SplashLoaded event,
    final Emitter<SplashState> emit,
  ) async {
    await apiUserRepository.getData();

    await Future.delayed(const Duration(seconds: 2));
    final token = await tokenRepository.getItem();
    if (token == null || token.isEmpty) {
      emit(const SplashUnauthorized());
    } else {
      emit(const SplashAuthorized());
    }
  }
}
