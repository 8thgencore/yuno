part of 'statistics_bloc.dart';

@Freezed(copyWith: false)
class StatisticsEvent with _$StatisticsEvent {
  const factory StatisticsEvent.started() = _StartedEvent;
}
