// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventDto _$EventDtoFromJson(Map<String, dynamic> json) => EventDto(
  expense: (json['expense'] as num).toDouble(),
  tripName: json['trip_name'] as String?,
  plannedDate: json['planned_date'] as String?,
  exitDate: json['exit_date'] as String?,
  userId: json['user_id'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  tripId: json['trip_id'] as String,
);

Map<String, dynamic> _$EventDtoToJson(EventDto instance) => <String, dynamic>{
  'trip_id': instance.tripId,
  'trip_name': instance.tripName,
  'planned_date': instance.plannedDate,
  'exit_date': instance.exitDate,
  'user_id': instance.userId,
  'expense': instance.expense,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
