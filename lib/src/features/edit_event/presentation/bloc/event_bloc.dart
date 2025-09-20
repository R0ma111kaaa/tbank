import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbank/src/features/edit_event/domain/entities/category/category_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/update_event/update_event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/repositories/event_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_event.dart';
part 'event_state.dart';
part 'event_bloc.freezed.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  final EventRepository repository;

  EventBloc({required this.repository}) : super(const Initial()) {
    on<UpdateData>(_updateData);
    on<SendData>(_sendData);
    on<CreateEvent>(_createEvent);
    on<UpdateDateTime>(_updateDateTime);
    on<UpdateTitle>(_updateTitle);
    on<AddCategory>(_addCategory);
  }

  void _updateDateTime(UpdateDateTime event, Emitter<EventState> emit) {
    state.mapOrNull(
      editing: (editingState) => emit(
        editingState.copyWith(
          entity: editingState.entity.copyWith(
            plannedDate: event.plannedDate,
            exitDate: event.exitDate,
          ),
        ),
      ),
    );
  }

  void _updateTitle(UpdateTitle event, Emitter<EventState> emit) {
    state.mapOrNull(
      editing: (editingState) => emit(
        editingState.copyWith(
          entity: editingState.entity.copyWith(tripName: event.title),
        ),
      ),
    );
  }

  void _addCategory(AddCategory event, Emitter<EventState> emit) {
    state.maybeMap(
      editing: (editingState) => emit(
        editingState.copyWith(
          entity: editingState.entity.copyWith(
            categories: [...editingState.entity.categories, event.category],
          ),
        ),
      ),
      orElse: () {},
    );
  }

  void _updateData(UpdateData event, Emitter<EventState> emit) {
    state.mapOrNull(
      editing: (editingState) =>
          emit(editingState.copyWith(entity: event.entity)),
    );
  }

  Future<void> _createEvent(CreateEvent event, Emitter<EventState> emit) async {
    final EventEntity eventEntity = await repository.createEvent();
    final eventId = eventEntity.tripId;

    emit(
      EventState.editing(
        UpdateEventEntity(
          tripName: '',
          plannedDate: DateTime.now(),
          exitDate: DateTime.now(),
          categories: [],
        ),
        eventId,
      ),
    );
  }

  Future<void> _sendData(SendData event, Emitter<EventState> emit) async {
    state.mapOrNull(
      editing: (editingState) {
        try {
          repository.updateEvent(editingState.eventId, editingState.entity);
          emit(const EventState.sended());
        } catch (e) {
          emit(const EventState.error());
        }
      },
    );
  }
}
