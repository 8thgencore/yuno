import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/task/models/i_task_with_project_name.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_task_repository.dart';
import 'package:yuno/domain/repository/api_user_repository.dart';

part 'home_header_bloc.freezed.dart';
part 'home_header_event.dart';
part 'home_header_state.dart';

class HomeHeaderBloc extends Bloc<HomeHeaderEvent, HomeHeaderState> {
  HomeHeaderBloc({
    required this.apiUserRepository,
    required this.apiTaskRepository,
  }) : super(const HomeHeaderState.initial()) {
    on<HomeHeaderEvent>(
      (event, emit) => event.map(
        started: (event) => _onHomeHeaderLoaded(event, emit),
      ),
    );
  }

  final ApiUserRepository apiUserRepository;
  final ApiTaskRepository apiTaskRepository;

  String _username = 'user';
  ITaskWithProjectName? _task;

  FutureOr<void> _onHomeHeaderLoaded(
    _StartedEvent event,
    Emitter<HomeHeaderState> emit,
  ) async {
    emit(const HomeHeaderState.loading());
    try {
      final user = await apiUserRepository.getCachedData();
      if (user != null) {
        if (user.firstName.isNotEmpty) {
          _username = user.firstName;
        }
      }
      final tasks = await apiTaskRepository.getCachedNotDoneTasks();

      // get a task close in time
      if (tasks != null) {
        final tasksWithDeadline = [...tasks];
        tasksWithDeadline.removeWhere((e) => e.deadline == null);
        if (tasksWithDeadline.isNotEmpty) {
          tasksWithDeadline.sort((a, b) {
            final aDate = a.deadline!.microsecondsSinceEpoch;
            final bDate = b.deadline!.microsecondsSinceEpoch;
            return aDate.compareTo(bDate);
          });
          final nearestTask = tasksWithDeadline.where((e) {
            return (e.deadline!.microsecondsSinceEpoch - DateTime.now().microsecondsSinceEpoch) > 0;
          });
          if (nearestTask.isNotEmpty) {
            _task = nearestTask.first;
          }
        }
      }
      emit(HomeHeaderState.loaded(
        username: _username,
        taskLength: tasks?.length ?? 0,
        task: _task,
      ));
    } on DioError catch (dioError) {
      emit(HomeHeaderState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }
}
