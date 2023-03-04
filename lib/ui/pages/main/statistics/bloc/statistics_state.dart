part of 'statistics_bloc.dart';

@freezed
class StatisticsState with _$StatisticsState {
  const factory StatisticsState.initial() = _InitialState;

  const factory StatisticsState.loading() = _LoadingState;

  const factory StatisticsState.loaded(StatisticsRead stats) = _LoadedState;

  const factory StatisticsState.failure(Object error) = _FailureState;
}
