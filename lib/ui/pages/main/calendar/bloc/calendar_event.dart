part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.started() = _StartedEvent;

  const factory CalendarEvent.updated() = _UpdatedEvent;

  const factory CalendarEvent.selectedDate(DateTime date) = _SelectedDateEvent;

  const factory CalendarEvent.checkedItem(String id) = _CheckedItemEvent;
}
