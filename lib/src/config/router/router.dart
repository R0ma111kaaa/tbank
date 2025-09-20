import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tbank/src/features/auth/presentation/pages/auth_page.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/presentation/pages/edit_event_page.dart';
import 'package:tbank/src/features/event_data/presentation/pages/event_data_page.dart';
import 'package:tbank/src/features/event_list/presentation/pages/event_list_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthRoute.page, initial: true),
    AutoRoute(page: EventListRoute.page),
    AutoRoute(page: EventDataRoute.page),
    AutoRoute(page: EditEventRoute.page),
  ];
}
