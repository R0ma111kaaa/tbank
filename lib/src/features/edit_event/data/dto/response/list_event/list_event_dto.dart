import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/event/event_dto.dart';

part 'list_event_dto.g.dart';

@JsonSerializable()
class ListEventDto {
  const ListEventDto({
    required this.ownedTrips,
    required this.participatingTrips,
  });

  @JsonKey(name: 'owned_trips')
  final List<EventDto> ownedTrips;

  @JsonKey(name: 'participating_trips')
  final List<EventDto> participatingTrips;

  factory ListEventDto.fromJson(Map<String, dynamic> json) =>
      _$ListEventDtoFromJson(json);
}
