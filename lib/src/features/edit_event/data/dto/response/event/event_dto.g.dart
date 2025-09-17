// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventDto _$EventDtoFromJson(Map<String, dynamic> json) => EventDto(
  tripId: json['trip_id'] as String,
  tripName: json['trip_name'] as String?,
  plannedDate: json['planned_date'] as String?,
  exitDate: json['exit_date'] as String?,
  participantCount: (json['participant_count'] as num).toInt(),
  totalSpent: (json['total_spent'] as num).toDouble(),
  totalPlanned: (json['total_planned'] as num).toDouble(),
);

Map<String, dynamic> _$EventDtoToJson(EventDto instance) => <String, dynamic>{
  'trip_id': instance.tripId,
  'trip_name': instance.tripName,
  'planned_date': instance.plannedDate,
  'exit_date': instance.exitDate,
  'participant_count': instance.participantCount,
  'total_spent': instance.totalSpent,
  'total_planned': instance.totalPlanned,
};
