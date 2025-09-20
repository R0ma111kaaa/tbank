import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tbank/src/features/auth/data/dto/response/user/user_response_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/request/expense_request_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/event/event_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/expense_response_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/list_event/list_event_dto.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/response_category_dto.dart';

part 'event_api.g.dart';

@RestApi()
abstract class EventApi {
  factory EventApi(Dio dio, {String? baseUrl}) = _EventApi;

  @POST('/trips/')
  Future<EventDto> createEvent(@Body() Map<String, dynamic> emptyJson);

  @GET('/trips/{trip_id}')
  Future<EventDto> getEvent(@Path('trip_id') String tripId);

  @PUT('/trips/{trip_id}')
  Future<EventDto> updateTrip(
    @Path('trip_id') String tripId,
    @Body() Map<String, dynamic> eventData,
  );

  @DELETE('/trips/{trip_id}')
  Future<String> deleteTrip(@Path('trip_id') String tripId);

  @POST('/trips/{trip_id}/join')
  Future<String> joinTrip(@Path('trip_id') String tripId);

  @GET('/trips/{trip_id}/participants')
  Future<List<UserResponseDto>> getTripParticipants(
    @Path('trip_id') String tripId,
  );

  @DELETE('/trips/{trip_id}/participants/{user_id}')
  Future<String> removeParticipant(
    @Path('trip_id') String tripId,
    @Path('user_id') String userId,
  );

  @GET('/trips/my')
  Future<ListEventDto> getEvents();

  @GET('/category/trip/{trip_id}')
  Future<List<ResponseCategoryDto>> getCategories(
    @Path('trip_id') String tripId,
  );

  @GET('/category/{category_id}')
  Future<ResponseCategoryDto> getCategory(
    @Path('category_id') String categoryId,
  );
  @PUT('/category/{category_id}')
  Future<ResponseCategoryDto> updateCategory(
    @Path('category_id') String tripId,
  );

  @DELETE('/category/{category_id}')
  Future<String> deleteCategory(@Path('category_id') String categoryId);

  @POST('/expense/')
  Future<ExpenseResponseDto> addExpense(@Body() ExpenseRequestDto dto);
}
