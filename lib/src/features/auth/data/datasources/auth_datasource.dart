import 'package:tbank/src/config/constants/constants.dart';
import 'package:tbank/src/features/auth/data/datasources/api/auth_api.dart';
import 'package:tbank/src/features/auth/data/dto/response/auth/auth_response_dto.dart';
import 'package:tbank/src/features/auth/data/dto/response/user/user_response_dto.dart';

abstract class AuthDatasource {
  AuthDatasource._();

  Future<AuthResponseDto> refreshToken(String refreshToken);
  Future<UserResponseDto> getUserData();
}

class AuthDatasourceImpl implements AuthDatasource {
  final AuthApi _api;

  AuthDatasourceImpl({required AuthApi api}) : _api = api;

  @override
  Future<UserResponseDto> getUserData() async {
    final response = await _api.getUserData();
    return response.data;
  }

  @override
  Future<AuthResponseDto> refreshToken(String refreshToken) async {
    final response = await _api.refreshToken({
      YandexKeys.refreshToken: refreshToken,
    });
    return response.data;
  }
}
