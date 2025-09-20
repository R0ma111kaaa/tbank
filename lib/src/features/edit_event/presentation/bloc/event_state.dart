part of 'event_bloc.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = Initial;
  const factory EventState.editing(UpdateEventEntity entity, String eventId) =
      Editing;
  const factory EventState.sended() = Sended;
  const factory EventState.error() = Error;
}
