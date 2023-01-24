import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/data/repository/tasks_repository.dart';
import 'package:yuno/data/repository/token_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({
    required this.tokenRepository,
    required this.tasksRepository,
    required this.apiUserRepository,
    required this.apiTaskRepository,
  }) : super(SplashInitial()) {
    on<SplashLoaded>(_onSplashLoaded);
  }

  final TokenRepository tokenRepository;
  final TasksRepository tasksRepository;
  final ApiUserRepository apiUserRepository;
  final ApiTaskRepository apiTaskRepository;

  FutureOr<void> _onSplashLoaded(
    final SplashLoaded event,
    final Emitter<SplashState> emit,
  ) async {
    await apiUserRepository.getData();

    await Future.delayed(const Duration(seconds: 1));

    final token = await tokenRepository.getItem();
    if (token == null || token.isEmpty) {
      emit(const SplashUnauthorized());
    } else {
      // Get tasks from server
      final tasks = await apiTaskRepository.getTasks();
      if (tasks is List<ITaskRead>) {
        await tasksRepository.setItem(tasks);
      }
      emit(const SplashAuthorized());
    }
  }
}
