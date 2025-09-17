import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/update_event/update_event_entity.dart';

abstract class EventRepository {
  Future<EventEntity> createEvent();
  Future<EventEntity> getEvent(String tripId);
  Future<EventEntity> updateEvent(
    String tripId,
    UpdateEventEntity updateEventRequestDto,
  );
  Future<void> deleteEvent(String tripId);
  Future<void> joinEvent(String tripId);
  Future<String> getEventParticipants(String tripId);
  Future<void> removeParticipant(String tripId, String userId);
}
