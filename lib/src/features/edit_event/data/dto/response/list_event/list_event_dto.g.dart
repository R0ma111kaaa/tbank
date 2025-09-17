// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListEventDto _$ListEventDtoFromJson(Map<String, dynamic> json) => ListEventDto(
  ownedTrips: (json['owned_trips'] as List<dynamic>)
      .map((e) => EventDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  participatingTrips: (json['participating_trips'] as List<dynamic>)
      .map((e) => EventDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListEventDtoToJson(ListEventDto instance) =>
    <String, dynamic>{
      'owned_trips': instance.ownedTrips,
      'participating_trips': instance.participatingTrips,
    };
