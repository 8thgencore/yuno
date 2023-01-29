import 'dart:async';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/data/repository/token_data_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({
    required this.tokenDataRepository,
    required this.apiUserRepository,
    required this.apiTaskRepository,
  }) : super(SplashInitial()) {
    on<SplashLoaded>(_onSplashLoaded);
  }

  final TokenDataRepository tokenDataRepository;
  final ApiUserRepository apiUserRepository;
  final ApiTaskRepository apiTaskRepository;

  FutureOr<void> _onSplashLoaded(
    final SplashLoaded event,
    final Emitter<SplashState> emit,
  ) async {
    try {
      await apiUserRepository.getData();

      await Future.delayed(const Duration(seconds: 1));

      final token = await tokenDataRepository.getItem();
      if (token == null || token.isEmpty) {
        emit(const SplashUnauthorized());
      } else {
        // Get tasks from server
        await apiTaskRepository.getNotDoneTasks();
        emit(const SplashAuthorized());
      }
    } on DioError catch (_) {
      emit(const SplashUnauthorized());
    }
  }
}
