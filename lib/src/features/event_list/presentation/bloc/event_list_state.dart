part of 'event_list_bloc.dart';

@freezed
class EventListState with _$EventListState {
  const factory EventListState.initial() = Initial;
  const factory EventListState.loading() = Loading;
  const factory EventListState.loaded(
    Map<String, List<EventEntity>> ownedEvents,
    Map<String, List<EventEntity>> participantingEvents,
    int menuIndex,
  ) = Loaded;
  const factory EventListState.error() = Error;
}
