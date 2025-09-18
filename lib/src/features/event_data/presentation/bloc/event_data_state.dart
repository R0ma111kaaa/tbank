part of 'event_data_bloc.dart';

@freezed
class EventDataState with _$EventDataState {
  const factory EventDataState.initial() = Initial;
  const factory EventDataState.loading() = Loading;
  const factory EventDataState.loaded(
    EventEntity eventEntity,
    List<UserEntity> participants,
    List<CategoryResponseEntity> categories,
  ) = Loaded;
  const factory EventDataState.addingExpence(
    EventEntity eventEntity,
    List<UserEntity> participants,
    List<CategoryResponseEntity> categories,
    NewExpenseEntity newExpenseEntity,
  ) = AddingExpence;
}
