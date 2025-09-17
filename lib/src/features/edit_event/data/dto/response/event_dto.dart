import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_dto.g.dart';

@JsonSerializable()
class EventDto {
  const EventDto({
    required this.expense,
    required this.tripName,
    required this.plannedDate,
    required this.exitDate,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.tripId,
  });

  @JsonKey(name: 'trip_id')
  final String tripId;

  @JsonKey(name: 'trip_name')
  final String? tripName;

  @JsonKey(name: 'planned_date')
  final String? plannedDate;

  @JsonKey(name: 'exit_date')
  final String? exitDate;

  @JsonKey(name: 'user_id')
  final String userId;

  @JsonKey(name: 'expense')
  final double expense;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);
}
