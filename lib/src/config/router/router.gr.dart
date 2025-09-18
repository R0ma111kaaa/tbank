// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthPage();
    },
  );
}

/// generated route for
/// [EditEventPage]
class EditEventRoute extends PageRouteInfo<void> {
  const EditEventRoute({List<PageRouteInfo>? children})
    : super(EditEventRoute.name, initialChildren: children);

  static const String name = 'EditEventRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EditEventPage();
    },
  );
}

/// generated route for
/// [EventDataPage]
class EventDataRoute extends PageRouteInfo<EventDataRouteArgs> {
  EventDataRoute({
    required EventEntity eventEntity,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         EventDataRoute.name,
         args: EventDataRouteArgs(eventEntity: eventEntity, key: key),
         initialChildren: children,
       );

  static const String name = 'EventDataRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EventDataRouteArgs>();
      return EventDataPage(eventEntity: args.eventEntity, key: args.key);
    },
  );
}

class EventDataRouteArgs {
  const EventDataRouteArgs({required this.eventEntity, this.key});

  final EventEntity eventEntity;

  final Key? key;

  @override
  String toString() {
    return 'EventDataRouteArgs{eventEntity: $eventEntity, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EventDataRouteArgs) return false;
    return eventEntity == other.eventEntity && key == other.key;
  }

  @override
  int get hashCode => eventEntity.hashCode ^ key.hashCode;
}

/// generated route for
/// [EventListPage]
class EventListRoute extends PageRouteInfo<void> {
  const EventListRoute({List<PageRouteInfo>? children})
    : super(EventListRoute.name, initialChildren: children);

  static const String name = 'EventListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EventListPage();
    },
  );
}
