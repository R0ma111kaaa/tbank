import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/event/event_dto.dart';

part 'event_entity.freezed.dart';

@freezed
abstract class EventEntity with _$EventEntity {
  const factory EventEntity({
    required String tripId,
    required String? tripName,
    required DateTime? plannedDate,
    required DateTime? exitDate,
    required int participantCount,
    required double totalSpent,
    required double totalPlanned,
  }) = _EventEntity;

  const EventEntity._();

  factory EventEntity.fromDto(EventDto dto) => EventEntity(
    tripId: dto.tripId,
    tripName: dto.tripName,
    plannedDate: dto.plannedDate != null
        ? DateTime.tryParse(dto.plannedDate!)
        : null,
    exitDate: dto.exitDate != null ? DateTime.tryParse(dto.exitDate!) : null,
    participantCount: dto.participantCount,
    totalSpent: dto.totalSpent,
    totalPlanned: dto.totalPlanned,
  );
}
