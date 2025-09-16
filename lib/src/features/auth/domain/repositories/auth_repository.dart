import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';

abstract class AuthRepository {
  Future<String?> getAccessToken();
  Future<UserEntity> getUserData();
  Future<bool> refreshToken();
  Future<void> clearTokens();
}
