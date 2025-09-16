import 'package:tbank/src/features/auth/data/dto/response/user/user_response_dto.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';

abstract class UserEntityMapper {
  UserEntityMapper._();

  static UserEntity userEntityFromDto(UserResponseDto dto) => UserEntity(
    id: dto.id,
    yandexId: dto.yandexId,
    yandexJson: dto.yandexJson,
  );
}
