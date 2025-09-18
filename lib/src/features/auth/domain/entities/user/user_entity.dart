import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/event_data/domain/entities/yandex_json/yandex_json_entity.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required YandexJsonEntity yandexJson,
    String? id,
    String? yandexId,
  }) = _UserEntity;
}
