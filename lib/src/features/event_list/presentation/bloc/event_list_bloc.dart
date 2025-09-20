import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/repositories/event_repository.dart';

part 'event_list_event.dart';
part 'event_list_state.dart';
part 'event_list_bloc.freezed.dart';

class EventListBloc extends Bloc<EventListEvent, EventListState> {
  final EventRepository repository;

  EventListBloc({required this.repository}) : super(const Initial()) {
    on<LoadData>(_loadData);
    on<ChangeMenuIndex>(_changeMenuIndex);
    on<JoinEvent>(_onJoinEvent);
  }

  Future<void> _loadData(LoadData event, Emitter<EventListState> emit) async {
    emit(const EventListState.loading());
    try {
      final response = await repository.getEvents();
      emit(
        EventListState.loaded(
          splitEvents(response.ownedTrips),
          splitEvents(response.participatingTrips),
          0,
        ),
      );
    } catch (e) {
      emit(const EventListState.error());
      rethrow;
    }
  }

  void _changeMenuIndex(ChangeMenuIndex event, Emitter<EventListState> emit) {
    state.mapOrNull(
      loaded: (loadedState) => emit(
        loadedState.copyWith(menuIndex: loadedState.menuIndex == 1 ? 0 : 1),
      ),
    );
  }

  void _onJoinEvent(JoinEvent event, Emitter<EventListState> emit) {
    repository.joinEvent(event.eventId);
  }
}

Map<String, List<EventEntity>> splitEvents(List<EventEntity> events) {
  final now = DateTime.now();

  final past = <EventEntity>[];
  final current = <EventEntity>[];
  final upcoming = <EventEntity>[];

  for (final e in events) {
    final start = e.plannedDate;
    final end = e.exitDate;

    if (start == null || end == null) {
      continue;
    }

    if (end.isBefore(now)) {
      past.add(e);
    } else if (start.isBefore(now) && end.isAfter(now)) {
      current.add(e);
    } else if (start.isAfter(now)) {
      upcoming.add(e);
    }
  }

  return {'past': past, 'current': current, 'upcoming': upcoming};
}
