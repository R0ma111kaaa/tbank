import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:tbank/src/features/auth/data/dto/response/auth/auth_response_dto.dart';
import 'package:tbank/src/features/auth/data/dto/response/user/user_response_dto.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  @GET('/auth/yandex/callback')
  Future<HttpResponse<AuthResponseDto>> authenticateWithYandex();

  @POST('/auth/refresh')
  Future<HttpResponse<AuthResponseDto>> refreshToken(
    @Body() Map<String, dynamic> body,
  );

  @GET('/user/profile')
  Future<HttpResponse<UserResponseDto>> getUserData();
}
