import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_dto.g.dart';

@JsonSerializable()
class EventDto {
  const EventDto({
    required this.tripId,
    required this.tripName,
    required this.plannedDate,
    required this.exitDate,
    required this.participantCount,
    required this.totalSpent,
    required this.totalPlanned,
  });

  @JsonKey(name: 'trip_id')
  final String tripId;

  @JsonKey(name: 'trip_name')
  final String? tripName;

  @JsonKey(name: 'planned_date')
  final String? plannedDate;

  @JsonKey(name: 'exit_date')
  final String? exitDate;

  @JsonKey(name: 'participant_count')
  final int participantCount;

  @JsonKey(name: 'total_spent')
  final double totalSpent;

  @JsonKey(name: 'total_planned')
  final double totalPlanned;

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);

  Map<String, dynamic> toJson() => _$EventDtoToJson(this);
}
