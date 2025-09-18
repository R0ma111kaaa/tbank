import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tbank/src/features/edit_event/data/datasources/api/event_api.dart';
import 'package:tbank/src/features/edit_event/data/datasources/event_datasource.dart';
import 'package:tbank/src/features/edit_event/data/repositories/event_repository_impl.dart';
import 'package:tbank/src/features/edit_event/domain/repositories/event_repository.dart';
import 'package:tbank/src/features/edit_event/presentation/bloc/event_bloc.dart';
import 'package:tbank/src/features/event_data/presentation/bloc/event_data_bloc.dart';
import 'package:tbank/src/features/event_list/presentation/bloc/event_list_bloc.dart';

void registerEventModule(GetIt getIt) {
  getIt.registerLazySingleton<EventApi>(() => EventApi(getIt<Dio>()));
  getIt.registerLazySingleton<EventDatasource>(
    () => EventDatasourceImpl(getIt<EventApi>()),
  );
  getIt.registerLazySingleton<EventRepository>(
    () => EventRepositoryImpl(getIt<EventDatasource>()),
  );
  getIt.registerFactory<EventBloc>(
    () => EventBloc(repository: getIt<EventRepository>()),
  );
  getIt.registerFactory<EventListBloc>(
    () => EventListBloc(repository: getIt<EventRepository>()),
  );
  getIt.registerFactory<EventDataBloc>(
    () => EventDataBloc(repository: getIt<EventRepository>()),
  );
}
