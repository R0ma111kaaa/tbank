import 'package:freezed_annotation/freezed_annotation.dart';

part 'yandex_json_entity.freezed.dart';
part 'yandex_json_entity.g.dart';

@freezed
abstract class YandexJsonEntity with _$YandexJsonEntity {
  const factory YandexJsonEntity({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required String displayName,
    required String picture,
    required String provider,
  }) = _YandexJsonEntity;

  factory YandexJsonEntity.fromJson(Map<String, dynamic> json) =>
      _$YandexJsonEntityFromJson(json);
}
