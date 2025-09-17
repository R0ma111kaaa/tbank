import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/edit_event/data/dto/request/update_event_dto.dart';
import 'package:tbank/src/features/edit_event/domain/entities/category/category_entity.dart';

part 'update_event_entity.freezed.dart';

@freezed
abstract class UpdateEventEntity with _$UpdateEventEntity {
  const factory UpdateEventEntity({
    required String tripName,
    required DateTime plannedDate,
    required DateTime exitDate,
    @Default(<CategoryEntity>[]) List<CategoryEntity> categories,
  }) = _UpdateEventEntity;

  const UpdateEventEntity._();

  UpdateEventRequestDto toDto() => UpdateEventRequestDto(
    tripName: tripName,
    plannedDate: plannedDate.toIso8601String().split('T')[0],
    exitDate: exitDate.toIso8601String().split('T')[0],
    categories: categories.map((e) => e.toJson()).toList(),
  );
}
