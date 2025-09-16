import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tbank/src/common/utils/save_tokens.dart';
import 'package:tbank/src/config/constants/constants.dart';
import 'package:tbank/src/features/auth/data/datasources/auth_datasource.dart';
import 'package:tbank/src/features/auth/data/mappers/user_entity_mapper.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';
import 'package:tbank/src/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FlutterSecureStorage secureStorage;
  final AuthDatasource dataSource;

  AuthRepositoryImpl({required this.secureStorage, required this.dataSource});

  @override
  Future<String?> getAccessToken() async {
    return await secureStorage.read(key: YandexKeys.accessToken);
  }

  @override
  Future<bool> refreshToken() async {
    try {
      final refreshToken = await secureStorage.read(
        key: YandexKeys.refreshToken,
      );
      if (refreshToken == null) {
        return false;
      }
      final response = await dataSource.refreshToken(refreshToken);

      if (response.refreshToken == null) {
        await clearTokens();
        return false;
      }

      await saveTokens(response.accessToken, response.refreshToken);
      return true;
    } catch (e) {
      clearTokens();
      return false;
    }
  }

  @override
  Future<void> clearTokens() async {
    secureStorage.delete(key: YandexKeys.accessToken);
    secureStorage.delete(key: YandexKeys.refreshToken);
  }

  @override
  Future<UserEntity> getUserData() async {
    final dto = await dataSource.getUserData();
    return UserEntityMapper.userEntityFromDto(dto);
  }
}
