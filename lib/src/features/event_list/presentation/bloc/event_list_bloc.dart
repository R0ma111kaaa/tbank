import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_list_event.dart';
part 'event_list_state.dart';
part 'event_list_bloc.freezed.dart';

class EventListBloc extends Bloc<EventListEvent, EventListState> {
  EventListBloc() : super(_Initial()) {
    on<EventListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
