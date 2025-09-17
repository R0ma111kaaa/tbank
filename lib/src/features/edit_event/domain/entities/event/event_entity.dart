import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/event_dto.dart';

part 'event_entity.freezed.dart';

@freezed
abstract class EventEntity with _$EventEntity {
  const factory EventEntity({
    required String tripId,
    required String? tripName,
    required String? plannedDate,
    required String? exitDate,
    required String userId,
    required double expense,
    required String createdAt,
    required String updatedAt,
  }) = _EventEntity;

  const EventEntity._();

  factory EventEntity.fromDto(EventDto dto) => EventEntity(
    tripId: dto.tripId,
    tripName: dto.tripName,
    plannedDate: dto.plannedDate,
    userId: dto.userId,
    exitDate: dto.exitDate,
    expense: dto.expense,
    createdAt: dto.createdAt,
    updatedAt: dto.updatedAt,
  );
}
