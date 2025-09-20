import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';
import 'package:tbank/src/features/edit_event/data/dto/request/expense_request_dto.dart';
import 'package:tbank/src/features/edit_event/domain/entities/category_response_entity/category_response_entity.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/domain/repositories/event_repository.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/expense_entity.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/new_expense_entity.dart';

part 'event_data_event.dart';
part 'event_data_state.dart';
part 'event_data_bloc.freezed.dart';

class EventDataBloc extends Bloc<EventDataEvent, EventDataState> {
  final EventRepository repository;

  EventDataBloc({required this.repository}) : super(const Initial()) {
    on<LoadData>(_onLoadData);
    on<UpdateExpense>(_onUpdateExpense);
    on<StartAddingExpense>(_onStartAddingExpense);
    on<SendExpense>(_onSendExpence);
    on<ChangeType>(_onChangeType);
    on<UpdateExpenseEntries>(_onUpdateExpenseEntries);
  }

  Future<void> _onLoadData(LoadData event, Emitter<EventDataState> emit) async {
    emit(const Loading());
    try {
      final participants = await repository.getEventParticipants(
        event.eventEntity.tripId,
      );
      final categories = await repository.getCategories(
        event.eventEntity.tripId,
      );
      emit(EventDataState.loaded(event.eventEntity, participants, categories));
    } catch (e) {
      emit(EventDataState.loaded(event.eventEntity, [], []));
      rethrow;
    }
  }

  void _onSendExpence(SendExpense event, Emitter<EventDataState> emit) {
    state.mapOrNull(
      addingExpence: (value) {
        repository.addExpense(
          ExpenseRequestDto(
            expenseName: value.newExpenseEntity.title ?? 'расход',
            amount:
                (value.newExpenseEntity.spentMoney ?? 0) *
                (value.newExpenseEntity.userCount ?? 0),
            categoryId: value.newExpenseEntity.entity == null
                ? value.categories.first.categoryId
                : value.newExpenseEntity.entity!.categoryId,
          ),
        );
      },
    );
  }

  void _onUpdateExpense(UpdateExpense event, Emitter<EventDataState> emit) {
    state.mapOrNull(
      addingExpence: (value) =>
          emit(value.copyWith(newExpenseEntity: event.newEntity)),
    );
  }

  void _onStartAddingExpense(
    StartAddingExpense event,
    Emitter<EventDataState> emit,
  ) {
    state.mapOrNull(
      loaded: (loadedState) {
        emit(
          EventDataState.addingExpence(
            loadedState.eventEntity,
            loadedState.participants,
            loadedState.categories,
            NewExpenseEntity(
              spentMoney: 0,
              userCount: 0,
              entity: loadedState.categories[0],
            ),
            0,
            [],
          ),
        );
      },
    );
  }

  void _onChangeType(ChangeType event, Emitter<EventDataState> emit) {
    state.mapOrNull(
      addingExpence: (addingExpence) {
        emit(
          addingExpence.copyWith(
            selectedTypeIndex: addingExpence.selectedTypeIndex == 0 ? 1 : 0,
          ),
        );
      },
    );
  }

  void _onUpdateExpenseEntries(
    UpdateExpenseEntries event,
    Emitter<EventDataState> emit,
  ) {
    state.mapOrNull(
      addingExpence: (addingExpence) {
        emit(
          addingExpence.copyWith(
            expenseEntries: addingExpence.expenseEntries + [event.newEntry],
          ),
        );
      },
    );
  }
}
