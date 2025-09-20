import 'package:tbank/src/features/auth/data/dto/response/user/user_response_dto.dart';
import 'package:tbank/src/features/edit_event/data/datasources/api/event_api.dart';
import 'package:tbank/src/features/edit_event/data/dto/request/update_event_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/request/expense_request_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/event/event_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/list_event/list_event_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/response_category_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/expense_response_dto.dart';

abstract class EventDatasource {
  Future<EventDto> createEvent();
  Future<EventDto> getEvent(String tripId);
  Future<EventDto> updateTrip(
    String tripId,
    UpdateEventRequestDto updateEventRequestDto,
  );
  Future<void> deleteTrip(String tripId);
  Future<void> joinTrip(String tripId);
  Future<List<UserResponseDto>> getTripParticipants(String tripId);
  Future<void> removeParticipant(String tripId, String userId);
  Future<ListEventDto> getEvents();

  // categories
  Future<List<ResponseCategoryDto>> getCategories(String tripId);
  Future<ResponseCategoryDto> getCategory(String categoryId);
  Future<ResponseCategoryDto> updateCategory(String categoryId);
  Future<void> deleteCategory(String categoryId);

  // expenses
  Future<ExpenseResponseDto> addExpense(ExpenseRequestDto dto);
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
  Future<void> deleteTrip(String tripId) async {
    await _api.deleteTrip(tripId);
  }

  @override
  Future<void> joinTrip(String tripId) async {
    await _api.joinTrip(tripId);
  }

  @override
  Future<List<UserResponseDto>> getTripParticipants(String tripId) =>
      _api.getTripParticipants(tripId);

  @override
  Future<void> removeParticipant(String tripId, String userId) async {
    await _api.removeParticipant(tripId, userId);
  }

  @override
  Future<ListEventDto> getEvents() => _api.getEvents();

  @override
  Future<List<ResponseCategoryDto>> getCategories(String tripId) =>
      _api.getCategories(tripId);

  @override
  Future<ResponseCategoryDto> getCategory(String categoryId) =>
      _api.getCategory(categoryId);

  @override
  Future<ResponseCategoryDto> updateCategory(String categoryId) =>
      _api.updateCategory(categoryId);

  @override
  Future<void> deleteCategory(String categoryId) async {
    await _api.deleteCategory(categoryId);
  }

  @override
  Future<ExpenseResponseDto> addExpense(ExpenseRequestDto dto) =>
      _api.addExpense(dto);
}
