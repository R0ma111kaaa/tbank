import 'package:json_annotation/json_annotation.dart';

part 'update_event_dto.g.dart';

@JsonSerializable()
class UpdateEventRequestDto {
  const UpdateEventRequestDto({
    required this.tripName,
    required this.plannedDate,
    required this.exitDate,
    required this.categories,
  });

  @JsonKey(name: 'trip_name')
  final String tripName;

  @JsonKey(name: 'planned_date')
  final String plannedDate;

  @JsonKey(name: 'exit_date')
  final String exitDate;

  @JsonKey(name: 'categories')
  final List<Map<String, dynamic>> categories;

  factory UpdateEventRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateEventRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateEventRequestDtoToJson(this);
}
