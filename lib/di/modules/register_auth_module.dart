import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:tbank/src/features/auth/data/datasources/api/auth_api.dart';
import 'package:tbank/src/features/auth/data/datasources/auth_datasource.dart';
import 'package:tbank/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:tbank/src/features/auth/domain/repositories/auth_repository.dart';

void registerAuthModule(GetIt getIt) {
  getIt.registerLazySingleton<AuthApi>(() => AuthApi(getIt<Dio>()));

  getIt.registerLazySingleton<AuthDatasource>(
    () => AuthDatasourceImpl(api: getIt<AuthApi>()),
  );

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      secureStorage: getIt<FlutterSecureStorage>(),
      dataSource: getIt<AuthDatasource>(),
    ),
  );
}
