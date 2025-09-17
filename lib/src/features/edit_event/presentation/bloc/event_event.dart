part of 'event_bloc.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.createEvent() = CreateEvent;
  const factory EventEvent.updateData(UpdateEventEntity entity) = UpdateData;
  const factory EventEvent.updateDateTime(
    DateTime plannedDate,
    DateTime exitDate,
  ) = UpdateDateTime;
  const factory EventEvent.updateTitle(String title) = UpdateTitle;
  const factory EventEvent.addCategory(CategoryEntity category) = AddCategory;
  const factory EventEvent.send() = SendData;
}
