// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventDataEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventDataEvent()';
}


}

/// @nodoc
class $EventDataEventCopyWith<$Res>  {
$EventDataEventCopyWith(EventDataEvent _, $Res Function(EventDataEvent) __);
}


/// Adds pattern-matching-related methods to [EventDataEvent].
extension EventDataEventPatterns on EventDataEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadData value)?  loadData,TResult Function( AddExpence value)?  addExpence,TResult Function( UpdateExpense value)?  updateExpense,TResult Function( StartAddingExpense value)?  startAddingExpense,TResult Function( SendExpense value)?  sendExpense,TResult Function( ChangeType value)?  changeType,TResult Function( UpdateExpenseEntries value)?  updateExpenseEntries,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadData() when loadData != null:
return loadData(_that);case AddExpence() when addExpence != null:
return addExpence(_that);case UpdateExpense() when updateExpense != null:
return updateExpense(_that);case StartAddingExpense() when startAddingExpense != null:
return startAddingExpense(_that);case SendExpense() when sendExpense != null:
return sendExpense(_that);case ChangeType() when changeType != null:
return changeType(_that);case UpdateExpenseEntries() when updateExpenseEntries != null:
return updateExpenseEntries(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadData value)  loadData,required TResult Function( AddExpence value)  addExpence,required TResult Function( UpdateExpense value)  updateExpense,required TResult Function( StartAddingExpense value)  startAddingExpense,required TResult Function( SendExpense value)  sendExpense,required TResult Function( ChangeType value)  changeType,required TResult Function( UpdateExpenseEntries value)  updateExpenseEntries,}){
final _that = this;
switch (_that) {
case LoadData():
return loadData(_that);case AddExpence():
return addExpence(_that);case UpdateExpense():
return updateExpense(_that);case StartAddingExpense():
return startAddingExpense(_that);case SendExpense():
return sendExpense(_that);case ChangeType():
return changeType(_that);case UpdateExpenseEntries():
return updateExpenseEntries(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadData value)?  loadData,TResult? Function( AddExpence value)?  addExpence,TResult? Function( UpdateExpense value)?  updateExpense,TResult? Function( StartAddingExpense value)?  startAddingExpense,TResult? Function( SendExpense value)?  sendExpense,TResult? Function( ChangeType value)?  changeType,TResult? Function( UpdateExpenseEntries value)?  updateExpenseEntries,}){
final _that = this;
switch (_that) {
case LoadData() when loadData != null:
return loadData(_that);case AddExpence() when addExpence != null:
return addExpence(_that);case UpdateExpense() when updateExpense != null:
return updateExpense(_that);case StartAddingExpense() when startAddingExpense != null:
return startAddingExpense(_that);case SendExpense() when sendExpense != null:
return sendExpense(_that);case ChangeType() when changeType != null:
return changeType(_that);case UpdateExpenseEntries() when updateExpenseEntries != null:
return updateExpenseEntries(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( EventEntity eventEntity)?  loadData,TResult Function()?  addExpence,TResult Function( NewExpenseEntity newEntity)?  updateExpense,TResult Function()?  startAddingExpense,TResult Function()?  sendExpense,TResult Function()?  changeType,TResult Function( ExpenseEntry newEntry)?  updateExpenseEntries,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadData() when loadData != null:
return loadData(_that.eventEntity);case AddExpence() when addExpence != null:
return addExpence();case UpdateExpense() when updateExpense != null:
return updateExpense(_that.newEntity);case StartAddingExpense() when startAddingExpense != null:
return startAddingExpense();case SendExpense() when sendExpense != null:
return sendExpense();case ChangeType() when changeType != null:
return changeType();case UpdateExpenseEntries() when updateExpenseEntries != null:
return updateExpenseEntries(_that.newEntry);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( EventEntity eventEntity)  loadData,required TResult Function()  addExpence,required TResult Function( NewExpenseEntity newEntity)  updateExpense,required TResult Function()  startAddingExpense,required TResult Function()  sendExpense,required TResult Function()  changeType,required TResult Function( ExpenseEntry newEntry)  updateExpenseEntries,}) {final _that = this;
switch (_that) {
case LoadData():
return loadData(_that.eventEntity);case AddExpence():
return addExpence();case UpdateExpense():
return updateExpense(_that.newEntity);case StartAddingExpense():
return startAddingExpense();case SendExpense():
return sendExpense();case ChangeType():
return changeType();case UpdateExpenseEntries():
return updateExpenseEntries(_that.newEntry);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( EventEntity eventEntity)?  loadData,TResult? Function()?  addExpence,TResult? Function( NewExpenseEntity newEntity)?  updateExpense,TResult? Function()?  startAddingExpense,TResult? Function()?  sendExpense,TResult? Function()?  changeType,TResult? Function( ExpenseEntry newEntry)?  updateExpenseEntries,}) {final _that = this;
switch (_that) {
case LoadData() when loadData != null:
return loadData(_that.eventEntity);case AddExpence() when addExpence != null:
return addExpence();case UpdateExpense() when updateExpense != null:
return updateExpense(_that.newEntity);case StartAddingExpense() when startAddingExpense != null:
return startAddingExpense();case SendExpense() when sendExpense != null:
return sendExpense();case ChangeType() when changeType != null:
return changeType();case UpdateExpenseEntries() when updateExpenseEntries != null:
return updateExpenseEntries(_that.newEntry);case _:
  return null;

}
}

}

/// @nodoc


class LoadData implements EventDataEvent {
  const LoadData(this.eventEntity);
  

 final  EventEntity eventEntity;

/// Create a copy of EventDataEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadDataCopyWith<LoadData> get copyWith => _$LoadDataCopyWithImpl<LoadData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadData&&(identical(other.eventEntity, eventEntity) || other.eventEntity == eventEntity));
}


@override
int get hashCode => Object.hash(runtimeType,eventEntity);

@override
String toString() {
  return 'EventDataEvent.loadData(eventEntity: $eventEntity)';
}


}

/// @nodoc
abstract mixin class $LoadDataCopyWith<$Res> implements $EventDataEventCopyWith<$Res> {
  factory $LoadDataCopyWith(LoadData value, $Res Function(LoadData) _then) = _$LoadDataCopyWithImpl;
@useResult
$Res call({
 EventEntity eventEntity
});


$EventEntityCopyWith<$Res> get eventEntity;

}
/// @nodoc
class _$LoadDataCopyWithImpl<$Res>
    implements $LoadDataCopyWith<$Res> {
  _$LoadDataCopyWithImpl(this._self, this._then);

  final LoadData _self;
  final $Res Function(LoadData) _then;

/// Create a copy of EventDataEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eventEntity = null,}) {
  return _then(LoadData(
null == eventEntity ? _self.eventEntity : eventEntity // ignore: cast_nullable_to_non_nullable
as EventEntity,
  ));
}

/// Create a copy of EventDataEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventEntityCopyWith<$Res> get eventEntity {
  
  return $EventEntityCopyWith<$Res>(_self.eventEntity, (value) {
    return _then(_self.copyWith(eventEntity: value));
  });
}
}

/// @nodoc


class AddExpence implements EventDataEvent {
  const AddExpence();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpence);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventDataEvent.addExpence()';
}


}




/// @nodoc


class UpdateExpense implements EventDataEvent {
  const UpdateExpense(this.newEntity);
  

 final  NewExpenseEntity newEntity;

/// Create a copy of EventDataEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateExpenseCopyWith<UpdateExpense> get copyWith => _$UpdateExpenseCopyWithImpl<UpdateExpense>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateExpense&&(identical(other.newEntity, newEntity) || other.newEntity == newEntity));
}


@override
int get hashCode => Object.hash(runtimeType,newEntity);

@override
String toString() {
  return 'EventDataEvent.updateExpense(newEntity: $newEntity)';
}


}

/// @nodoc
abstract mixin class $UpdateExpenseCopyWith<$Res> implements $EventDataEventCopyWith<$Res> {
  factory $UpdateExpenseCopyWith(UpdateExpense value, $Res Function(UpdateExpense) _then) = _$UpdateExpenseCopyWithImpl;
@useResult
$Res call({
 NewExpenseEntity newEntity
});


$NewExpenseEntityCopyWith<$Res> get newEntity;

}
/// @nodoc
class _$UpdateExpenseCopyWithImpl<$Res>
    implements $UpdateExpenseCopyWith<$Res> {
  _$UpdateExpenseCopyWithImpl(this._self, this._then);

  final UpdateExpense _self;
  final $Res Function(UpdateExpense) _then;

/// Create a copy of EventDataEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newEntity = null,}) {
  return _then(UpdateExpense(
null == newEntity ? _self.newEntity : newEntity // ignore: cast_nullable_to_non_nullable
as NewExpenseEntity,
  ));
}

/// Create a copy of EventDataEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NewExpenseEntityCopyWith<$Res> get newEntity {
  
  return $NewExpenseEntityCopyWith<$Res>(_self.newEntity, (value) {
    return _then(_self.copyWith(newEntity: value));
  });
}
}

/// @nodoc


class StartAddingExpense implements EventDataEvent {
  const StartAddingExpense();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartAddingExpense);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventDataEvent.startAddingExpense()';
}


}




/// @nodoc


class SendExpense implements EventDataEvent {
  const SendExpense();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendExpense);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventDataEvent.sendExpense()';
}


}




/// @nodoc


class ChangeType implements EventDataEvent {
  const ChangeType();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeType);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventDataEvent.changeType()';
}


}




/// @nodoc


class UpdateExpenseEntries implements EventDataEvent {
  const UpdateExpenseEntries(this.newEntry);
  

 final  ExpenseEntry newEntry;

/// Create a copy of EventDataEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateExpenseEntriesCopyWith<UpdateExpenseEntries> get copyWith => _$UpdateExpenseEntriesCopyWithImpl<UpdateExpenseEntries>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateExpenseEntries&&(identical(other.newEntry, newEntry) || other.newEntry == newEntry));
}


@override
int get hashCode => Object.hash(runtimeType,newEntry);

@override
String toString() {
  return 'EventDataEvent.updateExpenseEntries(newEntry: $newEntry)';
}


}

/// @nodoc
abstract mixin class $UpdateExpenseEntriesCopyWith<$Res> implements $EventDataEventCopyWith<$Res> {
  factory $UpdateExpenseEntriesCopyWith(UpdateExpenseEntries value, $Res Function(UpdateExpenseEntries) _then) = _$UpdateExpenseEntriesCopyWithImpl;
@useResult
$Res call({
 ExpenseEntry newEntry
});




}
/// @nodoc
class _$UpdateExpenseEntriesCopyWithImpl<$Res>
    implements $UpdateExpenseEntriesCopyWith<$Res> {
  _$UpdateExpenseEntriesCopyWithImpl(this._self, this._then);

  final UpdateExpenseEntries _self;
  final $Res Function(UpdateExpenseEntries) _then;

/// Create a copy of EventDataEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newEntry = null,}) {
  return _then(UpdateExpenseEntries(
null == newEntry ? _self.newEntry : newEntry // ignore: cast_nullable_to_non_nullable
as ExpenseEntry,
  ));
}


}

/// @nodoc
mixin _$EventDataState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventDataState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventDataState()';
}


}

/// @nodoc
class $EventDataStateCopyWith<$Res>  {
$EventDataStateCopyWith(EventDataState _, $Res Function(EventDataState) __);
}


/// Adds pattern-matching-related methods to [EventDataState].
extension EventDataStatePatterns on EventDataState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Loaded value)?  loaded,TResult Function( AddingExpence value)?  addingExpence,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case AddingExpence() when addingExpence != null:
return addingExpence(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Loaded value)  loaded,required TResult Function( AddingExpence value)  addingExpence,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Loaded():
return loaded(_that);case AddingExpence():
return addingExpence(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Loaded value)?  loaded,TResult? Function( AddingExpence value)?  addingExpence,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case AddingExpence() when addingExpence != null:
return addingExpence(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( EventEntity eventEntity,  List<UserEntity> participants,  List<CategoryResponseEntity> categories)?  loaded,TResult Function( EventEntity eventEntity,  List<UserEntity> participants,  List<CategoryResponseEntity> categories,  NewExpenseEntity newExpenseEntity,  int selectedTypeIndex,  List<ExpenseEntry> expenseEntries)?  addingExpence,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.eventEntity,_that.participants,_that.categories);case AddingExpence() when addingExpence != null:
return addingExpence(_that.eventEntity,_that.participants,_that.categories,_that.newExpenseEntity,_that.selectedTypeIndex,_that.expenseEntries);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( EventEntity eventEntity,  List<UserEntity> participants,  List<CategoryResponseEntity> categories)  loaded,required TResult Function( EventEntity eventEntity,  List<UserEntity> participants,  List<CategoryResponseEntity> categories,  NewExpenseEntity newExpenseEntity,  int selectedTypeIndex,  List<ExpenseEntry> expenseEntries)  addingExpence,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Loaded():
return loaded(_that.eventEntity,_that.participants,_that.categories);case AddingExpence():
return addingExpence(_that.eventEntity,_that.participants,_that.categories,_that.newExpenseEntity,_that.selectedTypeIndex,_that.expenseEntries);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( EventEntity eventEntity,  List<UserEntity> participants,  List<CategoryResponseEntity> categories)?  loaded,TResult? Function( EventEntity eventEntity,  List<UserEntity> participants,  List<CategoryResponseEntity> categories,  NewExpenseEntity newExpenseEntity,  int selectedTypeIndex,  List<ExpenseEntry> expenseEntries)?  addingExpence,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.eventEntity,_that.participants,_that.categories);case AddingExpence() when addingExpence != null:
return addingExpence(_that.eventEntity,_that.participants,_that.categories,_that.newExpenseEntity,_that.selectedTypeIndex,_that.expenseEntries);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements EventDataState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventDataState.initial()';
}


}




/// @nodoc


class Loading implements EventDataState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventDataState.loading()';
}


}




/// @nodoc


class Loaded implements EventDataState {
  const Loaded(this.eventEntity, final  List<UserEntity> participants, final  List<CategoryResponseEntity> categories): _participants = participants,_categories = categories;
  

 final  EventEntity eventEntity;
 final  List<UserEntity> _participants;
 List<UserEntity> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}

 final  List<CategoryResponseEntity> _categories;
 List<CategoryResponseEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of EventDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&(identical(other.eventEntity, eventEntity) || other.eventEntity == eventEntity)&&const DeepCollectionEquality().equals(other._participants, _participants)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,eventEntity,const DeepCollectionEquality().hash(_participants),const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'EventDataState.loaded(eventEntity: $eventEntity, participants: $participants, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $EventDataStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 EventEntity eventEntity, List<UserEntity> participants, List<CategoryResponseEntity> categories
});


$EventEntityCopyWith<$Res> get eventEntity;

}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of EventDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eventEntity = null,Object? participants = null,Object? categories = null,}) {
  return _then(Loaded(
null == eventEntity ? _self.eventEntity : eventEntity // ignore: cast_nullable_to_non_nullable
as EventEntity,null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryResponseEntity>,
  ));
}

/// Create a copy of EventDataState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventEntityCopyWith<$Res> get eventEntity {
  
  return $EventEntityCopyWith<$Res>(_self.eventEntity, (value) {
    return _then(_self.copyWith(eventEntity: value));
  });
}
}

/// @nodoc


class AddingExpence implements EventDataState {
  const AddingExpence(this.eventEntity, final  List<UserEntity> participants, final  List<CategoryResponseEntity> categories, this.newExpenseEntity, this.selectedTypeIndex, final  List<ExpenseEntry> expenseEntries): _participants = participants,_categories = categories,_expenseEntries = expenseEntries;
  

 final  EventEntity eventEntity;
 final  List<UserEntity> _participants;
 List<UserEntity> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}

 final  List<CategoryResponseEntity> _categories;
 List<CategoryResponseEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  NewExpenseEntity newExpenseEntity;
 final  int selectedTypeIndex;
 final  List<ExpenseEntry> _expenseEntries;
 List<ExpenseEntry> get expenseEntries {
  if (_expenseEntries is EqualUnmodifiableListView) return _expenseEntries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_expenseEntries);
}


/// Create a copy of EventDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddingExpenceCopyWith<AddingExpence> get copyWith => _$AddingExpenceCopyWithImpl<AddingExpence>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddingExpence&&(identical(other.eventEntity, eventEntity) || other.eventEntity == eventEntity)&&const DeepCollectionEquality().equals(other._participants, _participants)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.newExpenseEntity, newExpenseEntity) || other.newExpenseEntity == newExpenseEntity)&&(identical(other.selectedTypeIndex, selectedTypeIndex) || other.selectedTypeIndex == selectedTypeIndex)&&const DeepCollectionEquality().equals(other._expenseEntries, _expenseEntries));
}


@override
int get hashCode => Object.hash(runtimeType,eventEntity,const DeepCollectionEquality().hash(_participants),const DeepCollectionEquality().hash(_categories),newExpenseEntity,selectedTypeIndex,const DeepCollectionEquality().hash(_expenseEntries));

@override
String toString() {
  return 'EventDataState.addingExpence(eventEntity: $eventEntity, participants: $participants, categories: $categories, newExpenseEntity: $newExpenseEntity, selectedTypeIndex: $selectedTypeIndex, expenseEntries: $expenseEntries)';
}


}

/// @nodoc
abstract mixin class $AddingExpenceCopyWith<$Res> implements $EventDataStateCopyWith<$Res> {
  factory $AddingExpenceCopyWith(AddingExpence value, $Res Function(AddingExpence) _then) = _$AddingExpenceCopyWithImpl;
@useResult
$Res call({
 EventEntity eventEntity, List<UserEntity> participants, List<CategoryResponseEntity> categories, NewExpenseEntity newExpenseEntity, int selectedTypeIndex, List<ExpenseEntry> expenseEntries
});


$EventEntityCopyWith<$Res> get eventEntity;$NewExpenseEntityCopyWith<$Res> get newExpenseEntity;

}
/// @nodoc
class _$AddingExpenceCopyWithImpl<$Res>
    implements $AddingExpenceCopyWith<$Res> {
  _$AddingExpenceCopyWithImpl(this._self, this._then);

  final AddingExpence _self;
  final $Res Function(AddingExpence) _then;

/// Create a copy of EventDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eventEntity = null,Object? participants = null,Object? categories = null,Object? newExpenseEntity = null,Object? selectedTypeIndex = null,Object? expenseEntries = null,}) {
  return _then(AddingExpence(
null == eventEntity ? _self.eventEntity : eventEntity // ignore: cast_nullable_to_non_nullable
as EventEntity,null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<UserEntity>,null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryResponseEntity>,null == newExpenseEntity ? _self.newExpenseEntity : newExpenseEntity // ignore: cast_nullable_to_non_nullable
as NewExpenseEntity,null == selectedTypeIndex ? _self.selectedTypeIndex : selectedTypeIndex // ignore: cast_nullable_to_non_nullable
as int,null == expenseEntries ? _self._expenseEntries : expenseEntries // ignore: cast_nullable_to_non_nullable
as List<ExpenseEntry>,
  ));
}

/// Create a copy of EventDataState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventEntityCopyWith<$Res> get eventEntity {
  
  return $EventEntityCopyWith<$Res>(_self.eventEntity, (value) {
    return _then(_self.copyWith(eventEntity: value));
  });
}/// Create a copy of EventDataState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NewExpenseEntityCopyWith<$Res> get newExpenseEntity {
  
  return $NewExpenseEntityCopyWith<$Res>(_self.newExpenseEntity, (value) {
    return _then(_self.copyWith(newExpenseEntity: value));
  });
}
}

// dart format on
