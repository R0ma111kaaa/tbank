// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateEventRequestDto _$UpdateEventRequestDtoFromJson(
  Map<String, dynamic> json,
) => UpdateEventRequestDto(
  tripName: json['trip_name'] as String,
  plannedDate: json['planned_date'] as String,
  exitDate: json['exit_date'] as String,
  categories: (json['categories'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
);

Map<String, dynamic> _$UpdateEventRequestDtoToJson(
  UpdateEventRequestDto instance,
) => <String, dynamic>{
  'trip_name': instance.tripName,
  'planned_date': instance.plannedDate,
  'exit_date': instance.exitDate,
  'categories': instance.categories,
};
