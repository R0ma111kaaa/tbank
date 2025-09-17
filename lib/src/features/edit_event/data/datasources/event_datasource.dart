import 'package:tbank/src/features/edit_event/data/datasources/api/event_api.dart';
import 'package:tbank/src/features/edit_event/data/dto/request/update_event_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/event/event_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/list_event/list_event_dto.dart';

abstract class EventDatasource {
  Future<EventDto> createEvent();
  Future<EventDto> getEvent(String tripId);
  Future<EventDto> updateTrip(
    String tripId,
    UpdateEventRequestDto updateEventRequestDto,
  );
  Future<void> deleteTrip(String tripId);
  Future<void> joinTrip(String tripId);
  Future<String> getTripParticipants(String tripId);
  Future<void> removeParticipant(String tripId, String userId);
  Future<ListEventDto> getEvents();
}

class EventDatasourceImpl implements EventDatasource {
  final EventApi _api;

  EventDatasourceImpl(this._api);

  @override
  Future<EventDto> createEvent() => _api.createEvent({});

  @override
  Future<EventDto> getEvent(String tripId) => _api.getEvent(tripId);

  @override
  Future<EventDto> updateTrip(
    String tripId,
    UpdateEventRequestDto updateEventRequestDto,
  ) => _api.updateTrip(tripId, updateEventRequestDto.toJson());

  @override
  Future<void> deleteTrip(String tripId) => _api.deleteTrip(tripId);

  @override
  Future<void> joinTrip(String tripId) => _api.joinTrip(tripId);

  @override
  Future<String> getTripParticipants(String tripId) =>
      _api.getTripParticipants(tripId);

  @override
  Future<void> removeParticipant(String tripId, String userId) =>
      _api.removeParticipant(tripId, userId);

  @override
  Future<ListEventDto> getEvents() {
    return _api.getEvents();
  }
}
