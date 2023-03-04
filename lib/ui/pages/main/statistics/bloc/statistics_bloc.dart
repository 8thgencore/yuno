import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yuno/api/project/models.dart';
import 'package:yuno/data/http/error_interceptor.dart';
import 'package:yuno/domain/repository/api_project_repository.dart';

part 'statistics_event.dart';

part 'statistics_state.dart';

part 'statistics_bloc.freezed.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  StatisticsBloc({
    required this.projectRepository,
  }) : super(const StatisticsState.initial()) {
    on<StatisticsEvent>(
      (event, emit) => event.map(
        started: (event) async => _onStatsLoaded(event, emit),
      ),
    );
  }

  final IProjectRepository projectRepository;

  FutureOr<void> _onStatsLoaded(
    StatisticsEvent event,
    Emitter<StatisticsState> emit,
  ) async {
    emit(const StatisticsState.loading());
    try {
      final stats = await projectRepository.getStats();
      emit(StatisticsState.loaded(stats));
    } on DioError catch (dioError) {
      emit(StatisticsState.failure(dioErrorInterceptor(dioError).toString()));
    }
  }
}
