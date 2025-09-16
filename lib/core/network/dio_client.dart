import 'package:dio/dio.dart';
import 'package:tbank/core/network/interseptors/dio_loggers.dart';
import 'package:tbank/core/network/interseptors/internet_interceptor.dart';
import 'package:tbank/core/network/interseptors/token_interceptor.dart';
import 'package:tbank/src/common/utils/dotenv_util.dart';
import 'package:tbank/src/config/constants/constants.dart';

Dio createDio() {
  final dio = Dio();

  dio.options.baseUrl = Env.get(EnvConstants.baseUrl);
  dio.options.connectTimeout = const Duration(seconds: 15);
  dio.options.receiveTimeout = const Duration(seconds: 15);

  dio.interceptors.clear();
  dio.interceptors.addAll(createLoggingInterceptors());
  dio.interceptors.add(InternetInterceptor());
  dio.interceptors.add(TokenInterceptor());

  return dio;
}
