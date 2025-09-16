import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

List<Interceptor> createLoggingInterceptors() {
  final loggers = <Interceptor>[];
  if (kDebugMode) {
    loggers.add(
      PrettyDioLogger(
        request: true,
        compact: true,
        enabled: true,
        error: true,
        maxWidth: 90,
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
  return loggers;
}
