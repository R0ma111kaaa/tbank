import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/event_dto.dart';

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
  Future<String> getTripParticipants(@Path('trip_id') String tripId);

  @DELETE('/trips/{trip_id}/participants/{user_id}')
  Future<String> removeParticipant(
    @Path('trip_id') String tripId,
    @Path('user_id') String userId,
  );
}
