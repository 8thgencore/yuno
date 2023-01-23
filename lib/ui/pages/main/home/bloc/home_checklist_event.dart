part of 'home_checklist_bloc.dart';

@freezed
class HomeChecklistEvent with _$HomeChecklistEvent {
  const factory HomeChecklistEvent.started() = _StartedEvent;

  const factory HomeChecklistEvent.checkItem({required String id}) = _CheckItemEvent;
}
