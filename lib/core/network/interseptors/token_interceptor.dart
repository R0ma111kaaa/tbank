import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tbank/di/di.dart';
import 'package:tbank/src/features/auth/domain/repositories/auth_repository.dart';

class TokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final authRepository = getIt<AuthRepository>();
      final token = await authRepository.getAccessToken();

      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = token;
      }

      if (kDebugMode) {
        print('🔐 Token in request: $token');
      }
    } catch (e) {
      if (kDebugMode) {
        print('❌ Error getting token: $e');
      }
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      try {
        final authRepository = getIt<AuthRepository>();
        final success = await authRepository.refreshToken();
        if (success) {
          handler.resolve(
            await getIt<Dio>().request(
              err.requestOptions.path,
              options: Options(
                method: err.requestOptions.method,
                headers: err.requestOptions.headers,
              ),
              data: err.requestOptions.data,
              queryParameters: err.requestOptions.queryParameters,
            ),
          );
        } else {
          await authRepository.clearTokens();
          handler.reject(err);
        }
      } catch (e) {
        final authRepository = getIt<AuthRepository>();
        await authRepository.clearTokens();
        handler.reject(err);
      }
    } else {
      handler.reject(err);
    }
  }
}
