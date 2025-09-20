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
  participantCount: (json['participant_count'] as num?)?.toInt() ?? 1,
  totalSpent: (json['total_spent'] as num?)?.toDouble() ?? 0,
  totalPlanned: (json['total_planned'] as num?)?.toDouble() ?? 0,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  expense: (json['expense'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$EventDtoToJson(EventDto instance) => <String, dynamic>{
  'trip_id': instance.tripId,
  'trip_name': instance.tripName,
  'planned_date': instance.plannedDate,
  'exit_date': instance.exitDate,
  'participant_count': instance.participantCount,
  'total_spent': instance.totalSpent,
  'total_planned': instance.totalPlanned,
  'expense': instance.expense,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
