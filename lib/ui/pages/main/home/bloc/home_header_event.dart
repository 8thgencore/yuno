part of 'home_header_bloc.dart';

@freezed
class HomeHeaderEvent with _$HomeHeaderEvent {
  const factory HomeHeaderEvent.started() = _StartedEvent;
}
