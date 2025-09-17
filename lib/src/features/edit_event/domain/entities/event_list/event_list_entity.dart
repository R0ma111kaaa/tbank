import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/list_event/list_event_dto.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';

part 'event_list_entity.freezed.dart';

@freezed
abstract class EventListEntity with _$EventListEntity {
  const factory EventListEntity({
    required List<EventEntity> ownedTrips,
    required List<EventEntity> participatingTrips,
  }) = _EventListEntity;

  const EventListEntity._();

  factory EventListEntity.fromDto(ListEventDto dto) => EventListEntity(
    ownedTrips: dto.ownedTrips.map((e) => EventEntity.fromDto(e)).toList(),
    participatingTrips: dto.participatingTrips
        .map((e) => EventEntity.fromDto(e))
        .toList(),
  );
}
