import 'package:tbank/src/features/auth/data/mappers/user_entity_mapper.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';
import 'package:tbank/src/features/edit_event/data/datasources/event_datasource.dart';
import 'package:tbank/src/features/edit_event/data/dto/request/expense_request_dto.dart';
import 'package:tbank/src/features/edit_event/domain/entities/category_response_entity/category_response_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event_list/event_list_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/expense_response/expense_response_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/update_event/update_event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/repositories/event_repository.dart';

class EventRepositoryImpl implements EventRepository {
  final EventDatasource _datasource;

  EventRepositoryImpl(this._datasource);

  @override
  Future<EventEntity> createEvent() async {
    final dto = await _datasource.createEvent();
    return EventEntity.fromDto(dto);
  }

  @override
  Future<EventEntity> getEvent(String tripId) async {
    final dto = await _datasource.getEvent(tripId);
    return EventEntity.fromDto(dto);
  }

  @override
  Future<EventEntity> updateEvent(
    String tripId,
    UpdateEventEntity updateEventEntity,
  ) async {
    final dto = await _datasource.updateTrip(tripId, updateEventEntity.toDto());
    return EventEntity.fromDto(dto);
  }

  @override
  Future<void> deleteEvent(String tripId) => _datasource.deleteTrip(tripId);

  @override
  Future<void> joinEvent(String tripId) => _datasource.joinTrip(tripId);

  @override
  Future<List<UserEntity>> getEventParticipants(String tripId) async {
    final dtoList = await _datasource.getTripParticipants(tripId);
    return dtoList.map(UserEntityMapper.userEntityFromDto).toList();
  }

  @override
  Future<void> removeParticipant(String tripId, String userId) =>
      _datasource.removeParticipant(tripId, userId);

  @override
  Future<EventListEntity> getEvents() async {
    final dto = await _datasource.getEvents();
    return EventListEntity.fromDto(dto);
  }

  // categories
  @override
  Future<List<CategoryResponseEntity>> getCategories(String tripId) async {
    final list = await _datasource.getCategories(tripId);
    return list.map(CategoryResponseEntity.fromDto).toList();
  }

  @override
  Future<CategoryResponseEntity> getCategory(String categoryId) async {
    final dto = await _datasource.getCategory(categoryId);
    return CategoryResponseEntity.fromDto(dto);
  }

  @override
  Future<CategoryResponseEntity> updateCategory(String categoryId) async {
    final dto = await _datasource.updateCategory(categoryId);
    return CategoryResponseEntity.fromDto(dto);
  }

  @override
  Future<void> deleteCategory(String categoryId) =>
      _datasource.deleteCategory(categoryId);

  // expenses
  @override
  Future<ExpenseResponseEntity> addExpense(ExpenseRequestDto dto) async {
    final response = await _datasource.addExpense(dto);
    return ExpenseResponseEntity.fromDto(response);
  }
}
