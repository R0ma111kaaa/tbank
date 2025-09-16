import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? id,
    String? yandexId,
    Map<String, dynamic>? yandexJson,
  }) = _UserEntity;
}
