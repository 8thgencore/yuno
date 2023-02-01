part of 'home_checklist_bloc.dart';

@freezed
class HomeChecklistEvent with _$HomeChecklistEvent {
  const factory HomeChecklistEvent.started() = _StartedEvent;

  const factory HomeChecklistEvent.checkedItem(String id) = _CheckedItemEvent;

  const factory HomeChecklistEvent.deletedItem(String id) = _DeletedItemEvent;
}
