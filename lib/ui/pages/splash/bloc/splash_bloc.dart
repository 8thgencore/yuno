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
    required this.userRepository,
    required this.taskRepository,
  }) : super(SplashInitial()) {
    on<SplashLoaded>(_onSplashLoaded);
  }

  final TokenDataRepository tokenDataRepository;
  final IUserRepository userRepository;
  final ITaskRepository taskRepository;

  FutureOr<void> _onSplashLoaded(
    final SplashLoaded event,
    final Emitter<SplashState> emit,
  ) async {
    try {
      await userRepository.getData();

      final token = await tokenDataRepository.getItem();
      if (token == null || token.isEmpty) {
        emit(const SplashUnauthorized());
      } else {
        // Get tasks from server
        await taskRepository.getNotDoneTasks();
        emit(const SplashAuthorized());
      }
    } on DioError catch (_) {
      emit(const SplashUnauthorized());
    }
  }
}
