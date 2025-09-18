part of 'event_data_bloc.dart';

@freezed
class EventDataEvent with _$EventDataEvent {
  const factory EventDataEvent.loadData(EventEntity eventEntity) = LoadData;
  const factory EventDataEvent.addExpence() = AddExpence;
  const factory EventDataEvent.updateExpense(NewExpenseEntity newEntity) =
      UpdateExpense;
  const factory EventDataEvent.startAddingExpense() = StartAddingExpense;
  const factory EventDataEvent.sendExpense() = SendExpense;
  const factory EventDataEvent.changeType() = ChangeType;
}
