import 'package:tbank/src/features/edit_event/data/datasources/event_datasource.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event_list/event_list_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/update_event/update_event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/repositories/event_repository.dart';

class EventRepositoryImpl implements EventRepository {
  final EventDatasource _datasource;

  EventRepositoryImpl(this._datasource);

  @override
  Future<EventEntity> createEvent() async {
    final eventDto = await _datasource.createEvent();
    return EventEntity.fromDto(eventDto);
  }

  @override
  Future<EventEntity> getEvent(String tripId) async {
    final eventDto = await _datasource.getEvent(tripId);
    return EventEntity.fromDto(eventDto);
  }

  @override
  Future<EventEntity> updateEvent(
    String tripId,
    UpdateEventEntity updateEventEntity,
  ) async {
    final eventDto = await _datasource.updateTrip(
      tripId,
      updateEventEntity.toDto(),
    );
    return EventEntity.fromDto(eventDto);
  }

  @override
  Future<void> deleteEvent(String tripId) => _datasource.deleteTrip(tripId);

  @override
  Future<void> joinEvent(String tripId) => _datasource.joinTrip(tripId);

  @override
  Future<String> getEventParticipants(String tripId) =>
      _datasource.getTripParticipants(tripId);

  @override
  Future<void> removeParticipant(String tripId, String userId) =>
      _datasource.removeParticipant(tripId, userId);

  @override
  Future<EventListEntity> getEvents() async {
    final dto = await _datasource.getEvents();
    return EventListEntity.fromDto(dto);
  }
}
