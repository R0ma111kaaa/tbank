// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventEvent()';
}


}

/// @nodoc
class $EventEventCopyWith<$Res>  {
$EventEventCopyWith(EventEvent _, $Res Function(EventEvent) __);
}


/// Adds pattern-matching-related methods to [EventEvent].
extension EventEventPatterns on EventEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateEvent value)?  createEvent,TResult Function( UpdateData value)?  updateData,TResult Function( UpdateDateTime value)?  updateDateTime,TResult Function( UpdateTitle value)?  updateTitle,TResult Function( AddCategory value)?  addCategory,TResult Function( SendData value)?  send,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateEvent() when createEvent != null:
return createEvent(_that);case UpdateData() when updateData != null:
return updateData(_that);case UpdateDateTime() when updateDateTime != null:
return updateDateTime(_that);case UpdateTitle() when updateTitle != null:
return updateTitle(_that);case AddCategory() when addCategory != null:
return addCategory(_that);case SendData() when send != null:
return send(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateEvent value)  createEvent,required TResult Function( UpdateData value)  updateData,required TResult Function( UpdateDateTime value)  updateDateTime,required TResult Function( UpdateTitle value)  updateTitle,required TResult Function( AddCategory value)  addCategory,required TResult Function( SendData value)  send,}){
final _that = this;
switch (_that) {
case CreateEvent():
return createEvent(_that);case UpdateData():
return updateData(_that);case UpdateDateTime():
return updateDateTime(_that);case UpdateTitle():
return updateTitle(_that);case AddCategory():
return addCategory(_that);case SendData():
return send(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateEvent value)?  createEvent,TResult? Function( UpdateData value)?  updateData,TResult? Function( UpdateDateTime value)?  updateDateTime,TResult? Function( UpdateTitle value)?  updateTitle,TResult? Function( AddCategory value)?  addCategory,TResult? Function( SendData value)?  send,}){
final _that = this;
switch (_that) {
case CreateEvent() when createEvent != null:
return createEvent(_that);case UpdateData() when updateData != null:
return updateData(_that);case UpdateDateTime() when updateDateTime != null:
return updateDateTime(_that);case UpdateTitle() when updateTitle != null:
return updateTitle(_that);case AddCategory() when addCategory != null:
return addCategory(_that);case SendData() when send != null:
return send(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  createEvent,TResult Function( UpdateEventEntity entity)?  updateData,TResult Function( DateTime plannedDate,  DateTime exitDate)?  updateDateTime,TResult Function( String title)?  updateTitle,TResult Function( CategoryEntity category)?  addCategory,TResult Function()?  send,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateEvent() when createEvent != null:
return createEvent();case UpdateData() when updateData != null:
return updateData(_that.entity);case UpdateDateTime() when updateDateTime != null:
return updateDateTime(_that.plannedDate,_that.exitDate);case UpdateTitle() when updateTitle != null:
return updateTitle(_that.title);case AddCategory() when addCategory != null:
return addCategory(_that.category);case SendData() when send != null:
return send();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  createEvent,required TResult Function( UpdateEventEntity entity)  updateData,required TResult Function( DateTime plannedDate,  DateTime exitDate)  updateDateTime,required TResult Function( String title)  updateTitle,required TResult Function( CategoryEntity category)  addCategory,required TResult Function()  send,}) {final _that = this;
switch (_that) {
case CreateEvent():
return createEvent();case UpdateData():
return updateData(_that.entity);case UpdateDateTime():
return updateDateTime(_that.plannedDate,_that.exitDate);case UpdateTitle():
return updateTitle(_that.title);case AddCategory():
return addCategory(_that.category);case SendData():
return send();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  createEvent,TResult? Function( UpdateEventEntity entity)?  updateData,TResult? Function( DateTime plannedDate,  DateTime exitDate)?  updateDateTime,TResult? Function( String title)?  updateTitle,TResult? Function( CategoryEntity category)?  addCategory,TResult? Function()?  send,}) {final _that = this;
switch (_that) {
case CreateEvent() when createEvent != null:
return createEvent();case UpdateData() when updateData != null:
return updateData(_that.entity);case UpdateDateTime() when updateDateTime != null:
return updateDateTime(_that.plannedDate,_that.exitDate);case UpdateTitle() when updateTitle != null:
return updateTitle(_that.title);case AddCategory() when addCategory != null:
return addCategory(_that.category);case SendData() when send != null:
return send();case _:
  return null;

}
}

}

/// @nodoc


class CreateEvent implements EventEvent {
  const CreateEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventEvent.createEvent()';
}


}




/// @nodoc


class UpdateData implements EventEvent {
  const UpdateData(this.entity);
  

 final  UpdateEventEntity entity;

/// Create a copy of EventEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDataCopyWith<UpdateData> get copyWith => _$UpdateDataCopyWithImpl<UpdateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateData&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,entity);

@override
String toString() {
  return 'EventEvent.updateData(entity: $entity)';
}


}

/// @nodoc
abstract mixin class $UpdateDataCopyWith<$Res> implements $EventEventCopyWith<$Res> {
  factory $UpdateDataCopyWith(UpdateData value, $Res Function(UpdateData) _then) = _$UpdateDataCopyWithImpl;
@useResult
$Res call({
 UpdateEventEntity entity
});


$UpdateEventEntityCopyWith<$Res> get entity;

}
/// @nodoc
class _$UpdateDataCopyWithImpl<$Res>
    implements $UpdateDataCopyWith<$Res> {
  _$UpdateDataCopyWithImpl(this._self, this._then);

  final UpdateData _self;
  final $Res Function(UpdateData) _then;

/// Create a copy of EventEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entity = null,}) {
  return _then(UpdateData(
null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as UpdateEventEntity,
  ));
}

/// Create a copy of EventEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateEventEntityCopyWith<$Res> get entity {
  
  return $UpdateEventEntityCopyWith<$Res>(_self.entity, (value) {
    return _then(_self.copyWith(entity: value));
  });
}
}

/// @nodoc


class UpdateDateTime implements EventEvent {
  const UpdateDateTime(this.plannedDate, this.exitDate);
  

 final  DateTime plannedDate;
 final  DateTime exitDate;

/// Create a copy of EventEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDateTimeCopyWith<UpdateDateTime> get copyWith => _$UpdateDateTimeCopyWithImpl<UpdateDateTime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDateTime&&(identical(other.plannedDate, plannedDate) || other.plannedDate == plannedDate)&&(identical(other.exitDate, exitDate) || other.exitDate == exitDate));
}


@override
int get hashCode => Object.hash(runtimeType,plannedDate,exitDate);

@override
String toString() {
  return 'EventEvent.updateDateTime(plannedDate: $plannedDate, exitDate: $exitDate)';
}


}

/// @nodoc
abstract mixin class $UpdateDateTimeCopyWith<$Res> implements $EventEventCopyWith<$Res> {
  factory $UpdateDateTimeCopyWith(UpdateDateTime value, $Res Function(UpdateDateTime) _then) = _$UpdateDateTimeCopyWithImpl;
@useResult
$Res call({
 DateTime plannedDate, DateTime exitDate
});




}
/// @nodoc
class _$UpdateDateTimeCopyWithImpl<$Res>
    implements $UpdateDateTimeCopyWith<$Res> {
  _$UpdateDateTimeCopyWithImpl(this._self, this._then);

  final UpdateDateTime _self;
  final $Res Function(UpdateDateTime) _then;

/// Create a copy of EventEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? plannedDate = null,Object? exitDate = null,}) {
  return _then(UpdateDateTime(
null == plannedDate ? _self.plannedDate : plannedDate // ignore: cast_nullable_to_non_nullable
as DateTime,null == exitDate ? _self.exitDate : exitDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class UpdateTitle implements EventEvent {
  const UpdateTitle(this.title);
  

 final  String title;

/// Create a copy of EventEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTitleCopyWith<UpdateTitle> get copyWith => _$UpdateTitleCopyWithImpl<UpdateTitle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTitle&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'EventEvent.updateTitle(title: $title)';
}


}

/// @nodoc
abstract mixin class $UpdateTitleCopyWith<$Res> implements $EventEventCopyWith<$Res> {
  factory $UpdateTitleCopyWith(UpdateTitle value, $Res Function(UpdateTitle) _then) = _$UpdateTitleCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$UpdateTitleCopyWithImpl<$Res>
    implements $UpdateTitleCopyWith<$Res> {
  _$UpdateTitleCopyWithImpl(this._self, this._then);

  final UpdateTitle _self;
  final $Res Function(UpdateTitle) _then;

/// Create a copy of EventEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(UpdateTitle(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddCategory implements EventEvent {
  const AddCategory(this.category);
  

 final  CategoryEntity category;

/// Create a copy of EventEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCategoryCopyWith<AddCategory> get copyWith => _$AddCategoryCopyWithImpl<AddCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'EventEvent.addCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class $AddCategoryCopyWith<$Res> implements $EventEventCopyWith<$Res> {
  factory $AddCategoryCopyWith(AddCategory value, $Res Function(AddCategory) _then) = _$AddCategoryCopyWithImpl;
@useResult
$Res call({
 CategoryEntity category
});




}
/// @nodoc
class _$AddCategoryCopyWithImpl<$Res>
    implements $AddCategoryCopyWith<$Res> {
  _$AddCategoryCopyWithImpl(this._self, this._then);

  final AddCategory _self;
  final $Res Function(AddCategory) _then;

/// Create a copy of EventEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(AddCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity,
  ));
}


}

/// @nodoc


class SendData implements EventEvent {
  const SendData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventEvent.send()';
}


}




/// @nodoc
mixin _$EventState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventState()';
}


}

/// @nodoc
class $EventStateCopyWith<$Res>  {
$EventStateCopyWith(EventState _, $Res Function(EventState) __);
}


/// Adds pattern-matching-related methods to [EventState].
extension EventStatePatterns on EventState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Editing value)?  editing,TResult Function( Sended value)?  sended,TResult Function( Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Editing() when editing != null:
return editing(_that);case Sended() when sended != null:
return sended(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Editing value)  editing,required TResult Function( Sended value)  sended,required TResult Function( Error value)  error,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Editing():
return editing(_that);case Sended():
return sended(_that);case Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Editing value)?  editing,TResult? Function( Sended value)?  sended,TResult? Function( Error value)?  error,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Editing() when editing != null:
return editing(_that);case Sended() when sended != null:
return sended(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( UpdateEventEntity entity,  String eventId)?  editing,TResult Function()?  sended,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Editing() when editing != null:
return editing(_that.entity,_that.eventId);case Sended() when sended != null:
return sended();case Error() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( UpdateEventEntity entity,  String eventId)  editing,required TResult Function()  sended,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Editing():
return editing(_that.entity,_that.eventId);case Sended():
return sended();case Error():
return error();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( UpdateEventEntity entity,  String eventId)?  editing,TResult? Function()?  sended,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Editing() when editing != null:
return editing(_that.entity,_that.eventId);case Sended() when sended != null:
return sended();case Error() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class Initial implements EventState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventState.initial()';
}


}




/// @nodoc


class Editing implements EventState {
  const Editing(this.entity, this.eventId);
  

 final  UpdateEventEntity entity;
 final  String eventId;

/// Create a copy of EventState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditingCopyWith<Editing> get copyWith => _$EditingCopyWithImpl<Editing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Editing&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,entity,eventId);

@override
String toString() {
  return 'EventState.editing(entity: $entity, eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class $EditingCopyWith<$Res> implements $EventStateCopyWith<$Res> {
  factory $EditingCopyWith(Editing value, $Res Function(Editing) _then) = _$EditingCopyWithImpl;
@useResult
$Res call({
 UpdateEventEntity entity, String eventId
});


$UpdateEventEntityCopyWith<$Res> get entity;

}
/// @nodoc
class _$EditingCopyWithImpl<$Res>
    implements $EditingCopyWith<$Res> {
  _$EditingCopyWithImpl(this._self, this._then);

  final Editing _self;
  final $Res Function(Editing) _then;

/// Create a copy of EventState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entity = null,Object? eventId = null,}) {
  return _then(Editing(
null == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as UpdateEventEntity,null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of EventState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateEventEntityCopyWith<$Res> get entity {
  
  return $UpdateEventEntityCopyWith<$Res>(_self.entity, (value) {
    return _then(_self.copyWith(entity: value));
  });
}
}

/// @nodoc


class Sended implements EventState {
  const Sended();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sended);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventState.sended()';
}


}




/// @nodoc


class Error implements EventState {
  const Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventState.error()';
}


}




// dart format on
