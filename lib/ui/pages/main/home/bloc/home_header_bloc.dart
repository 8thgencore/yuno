import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/task/models/i_task_read.dart';
import 'package:yuno/api/user/models/i_user_read.dart';
import 'package:yuno/data/repository/user_repository.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';

part 'home_header_bloc.freezed.dart';
part 'home_header_event.dart';
part 'home_header_state.dart';

class HomeHeaderBloc extends Bloc<HomeHeaderEvent, HomeHeaderState> {
  HomeHeaderBloc({
    required this.userRepository,
    required this.apiTaskRepository,
  }) : super(const HomeHeaderState.initial()) {
    on<HomeHeaderEvent>(
      (event, emit) => event.map(
        started: (event) => _onHomeHeaderLoaded(event, emit),
      ),
    );
  }

  final UserRepository userRepository;
  final ApiTaskRepository apiTaskRepository;

  String _username = 'user';
  ITaskRead? _task;

  FutureOr<void> _onHomeHeaderLoaded(
    _StartedEvent event,
    Emitter<HomeHeaderState> emit,
  ) async {
    emit(const HomeHeaderState.loading());
    try {
      final user = await userRepository.getItem();
      if (user is IUserRead) {
        if (user.firstName.isNotEmpty) {
          _username = user.firstName;
        }
      }
      final tasks = await apiTaskRepository.getNotDoneTasks();
      if (tasks is List<ITaskRead>) {
        if (tasks.isNotEmpty) {
          _task = tasks.last;
        }
        emit(HomeHeaderState.loaded(
          username: _username,
          taskLength: tasks.length,
          task: _task,
        ));
      } else {
        emit(const HomeHeaderState.failure('Wrong data from server'));
      }
    } on Exception catch (_) {
      emit(const HomeHeaderState.failure("Don't get tasks"));
    }
  }
}
