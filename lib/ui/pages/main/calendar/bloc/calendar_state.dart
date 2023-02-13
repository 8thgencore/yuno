part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const CalendarState._();

  const factory CalendarState.initial() = _InitialState;

  const factory CalendarState.loading() = _LoadingState;

  const factory CalendarState.loaded({
    required DateTime date,
    required List<ITaskWithProjectName> tasks,
  }) = _LoadedState;

  const factory CalendarState.failure(Object error) = _FailureState;
}
