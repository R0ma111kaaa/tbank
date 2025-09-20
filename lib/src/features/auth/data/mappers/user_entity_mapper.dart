import 'dart:convert';

import 'package:tbank/src/features/auth/data/dto/response/user/user_response_dto.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';
import 'package:tbank/src/features/event_data/domain/entities/yandex_json/yandex_json_entity.dart';

abstract class UserEntityMapper {
  UserEntityMapper._();

  static UserEntity userEntityFromDto(UserResponseDto dto) {
    final raw = dto.yandexJson;

    Map<String, dynamic> parsed;

    if (raw is String) {
      // случай, когда ручка вернула строку JSON
      parsed = json.decode(raw) as Map<String, dynamic>;
    } else if (raw is Map<String, dynamic>) {
      // случай, когда ручка вернула объект JSON
      parsed = raw;
    } else {
      throw FormatException(
        'Unexpected yandexJson type: ${raw.runtimeType}, value: $raw',
      );
    }

    return UserEntity(
      id: dto.id,
      yandexId: dto.yandexId,
      yandexJson: YandexJsonEntity.fromJson(parsed),
    );
  }
}
