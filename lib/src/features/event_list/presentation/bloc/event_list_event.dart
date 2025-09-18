part of 'event_list_bloc.dart';

@freezed
class EventListEvent with _$EventListEvent {
  const factory EventListEvent.loadData() = LoadData;
  const factory EventListEvent.changeMenuIndex() = ChangeMenuIndex;
  const factory EventListEvent.joinEvent(String eventId) = JoinEvent;
}
