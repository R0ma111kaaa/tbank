import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/category_response_entity/category_response_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event_list/event_list_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/expense_response/expense_response_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/update_event/update_event_entity.dart';
import 'package:tbank/src/features/edit_event/data/dto/request/expense_request_dto.dart';

abstract class EventRepository {
  Future<EventEntity> createEvent();
  Future<EventEntity> getEvent(String tripId);
  Future<EventEntity> updateEvent(
    String tripId,
    UpdateEventEntity updateEventEntity,
  );
  Future<void> deleteEvent(String tripId);
  Future<void> joinEvent(String tripId);
  Future<List<UserEntity>> getEventParticipants(String tripId);
  Future<void> removeParticipant(String tripId, String userId);
  Future<EventListEntity> getEvents();

  // categories
  Future<List<CategoryResponseEntity>> getCategories(String tripId);
  Future<CategoryResponseEntity> getCategory(String categoryId);
  Future<CategoryResponseEntity> updateCategory(String categoryId);
  Future<void> deleteCategory(String categoryId);

  // expenses
  Future<ExpenseResponseEntity> addExpense(ExpenseRequestDto dto);
}
