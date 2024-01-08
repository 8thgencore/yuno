part of 'home_header_bloc.dart';

@Freezed(copyWith: false)
class HomeHeaderEvent with _$HomeHeaderEvent {
  const factory HomeHeaderEvent.started() = _StartedEvent;
}
