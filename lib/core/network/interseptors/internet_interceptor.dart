import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class InternetInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final hasConnection = await InternetConnectionChecker().hasConnection;
    if (!hasConnection) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: 'No internet connection',
          type: DioExceptionType.unknown,
        ),
      );
    }
    handler.next(options);
  }
}
