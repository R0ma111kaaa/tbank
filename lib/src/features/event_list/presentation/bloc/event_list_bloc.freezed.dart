// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventListEvent()';
}


}

/// @nodoc
class $EventListEventCopyWith<$Res>  {
$EventListEventCopyWith(EventListEvent _, $Res Function(EventListEvent) __);
}


/// Adds pattern-matching-related methods to [EventListEvent].
extension EventListEventPatterns on EventListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadData value)?  loadData,TResult Function( ChangeMenuIndex value)?  changeMenuIndex,TResult Function( JoinEvent value)?  joinEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadData() when loadData != null:
return loadData(_that);case ChangeMenuIndex() when changeMenuIndex != null:
return changeMenuIndex(_that);case JoinEvent() when joinEvent != null:
return joinEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadData value)  loadData,required TResult Function( ChangeMenuIndex value)  changeMenuIndex,required TResult Function( JoinEvent value)  joinEvent,}){
final _that = this;
switch (_that) {
case LoadData():
return loadData(_that);case ChangeMenuIndex():
return changeMenuIndex(_that);case JoinEvent():
return joinEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadData value)?  loadData,TResult? Function( ChangeMenuIndex value)?  changeMenuIndex,TResult? Function( JoinEvent value)?  joinEvent,}){
final _that = this;
switch (_that) {
case LoadData() when loadData != null:
return loadData(_that);case ChangeMenuIndex() when changeMenuIndex != null:
return changeMenuIndex(_that);case JoinEvent() when joinEvent != null:
return joinEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function()?  changeMenuIndex,TResult Function( String eventId)?  joinEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadData() when loadData != null:
return loadData();case ChangeMenuIndex() when changeMenuIndex != null:
return changeMenuIndex();case JoinEvent() when joinEvent != null:
return joinEvent(_that.eventId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function()  changeMenuIndex,required TResult Function( String eventId)  joinEvent,}) {final _that = this;
switch (_that) {
case LoadData():
return loadData();case ChangeMenuIndex():
return changeMenuIndex();case JoinEvent():
return joinEvent(_that.eventId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function()?  changeMenuIndex,TResult? Function( String eventId)?  joinEvent,}) {final _that = this;
switch (_that) {
case LoadData() when loadData != null:
return loadData();case ChangeMenuIndex() when changeMenuIndex != null:
return changeMenuIndex();case JoinEvent() when joinEvent != null:
return joinEvent(_that.eventId);case _:
  return null;

}
}

}

/// @nodoc


class LoadData implements EventListEvent {
  const LoadData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventListEvent.loadData()';
}


}




/// @nodoc


class ChangeMenuIndex implements EventListEvent {
  const ChangeMenuIndex();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeMenuIndex);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventListEvent.changeMenuIndex()';
}


}




/// @nodoc


class JoinEvent implements EventListEvent {
  const JoinEvent(this.eventId);
  

 final  String eventId;

/// Create a copy of EventListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinEventCopyWith<JoinEvent> get copyWith => _$JoinEventCopyWithImpl<JoinEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinEvent&&(identical(other.eventId, eventId) || other.eventId == eventId));
}


@override
int get hashCode => Object.hash(runtimeType,eventId);

@override
String toString() {
  return 'EventListEvent.joinEvent(eventId: $eventId)';
}


}

/// @nodoc
abstract mixin class $JoinEventCopyWith<$Res> implements $EventListEventCopyWith<$Res> {
  factory $JoinEventCopyWith(JoinEvent value, $Res Function(JoinEvent) _then) = _$JoinEventCopyWithImpl;
@useResult
$Res call({
 String eventId
});




}
/// @nodoc
class _$JoinEventCopyWithImpl<$Res>
    implements $JoinEventCopyWith<$Res> {
  _$JoinEventCopyWithImpl(this._self, this._then);

  final JoinEvent _self;
  final $Res Function(JoinEvent) _then;

/// Create a copy of EventListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? eventId = null,}) {
  return _then(JoinEvent(
null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$EventListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventListState()';
}


}

/// @nodoc
class $EventListStateCopyWith<$Res>  {
$EventListStateCopyWith(EventListState _, $Res Function(EventListState) __);
}


/// Adds pattern-matching-related methods to [EventListState].
extension EventListStatePatterns on EventListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Loaded value)?  loaded,TResult Function( Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Loaded value)  loaded,required TResult Function( Error value)  error,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Loaded():
return loaded(_that);case Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Loaded value)?  loaded,TResult? Function( Error value)?  error,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Map<String, List<EventEntity>> ownedEvents,  Map<String, List<EventEntity>> participantingEvents,  int menuIndex)?  loaded,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.ownedEvents,_that.participantingEvents,_that.menuIndex);case Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Map<String, List<EventEntity>> ownedEvents,  Map<String, List<EventEntity>> participantingEvents,  int menuIndex)  loaded,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Loaded():
return loaded(_that.ownedEvents,_that.participantingEvents,_that.menuIndex);case Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Map<String, List<EventEntity>> ownedEvents,  Map<String, List<EventEntity>> participantingEvents,  int menuIndex)?  loaded,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.ownedEvents,_that.participantingEvents,_that.menuIndex);case Error() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class Initial implements EventListState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventListState.initial()';
}


}




/// @nodoc


class Loading implements EventListState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventListState.loading()';
}


}




/// @nodoc


class Loaded implements EventListState {
  const Loaded(final  Map<String, List<EventEntity>> ownedEvents, final  Map<String, List<EventEntity>> participantingEvents, this.menuIndex): _ownedEvents = ownedEvents,_participantingEvents = participantingEvents;
  

 final  Map<String, List<EventEntity>> _ownedEvents;
 Map<String, List<EventEntity>> get ownedEvents {
  if (_ownedEvents is EqualUnmodifiableMapView) return _ownedEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_ownedEvents);
}

 final  Map<String, List<EventEntity>> _participantingEvents;
 Map<String, List<EventEntity>> get participantingEvents {
  if (_participantingEvents is EqualUnmodifiableMapView) return _participantingEvents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_participantingEvents);
}

 final  int menuIndex;

/// Create a copy of EventListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._ownedEvents, _ownedEvents)&&const DeepCollectionEquality().equals(other._participantingEvents, _participantingEvents)&&(identical(other.menuIndex, menuIndex) || other.menuIndex == menuIndex));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ownedEvents),const DeepCollectionEquality().hash(_participantingEvents),menuIndex);

@override
String toString() {
  return 'EventListState.loaded(ownedEvents: $ownedEvents, participantingEvents: $participantingEvents, menuIndex: $menuIndex)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $EventListStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 Map<String, List<EventEntity>> ownedEvents, Map<String, List<EventEntity>> participantingEvents, int menuIndex
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of EventListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ownedEvents = null,Object? participantingEvents = null,Object? menuIndex = null,}) {
  return _then(Loaded(
null == ownedEvents ? _self._ownedEvents : ownedEvents // ignore: cast_nullable_to_non_nullable
as Map<String, List<EventEntity>>,null == participantingEvents ? _self._participantingEvents : participantingEvents // ignore: cast_nullable_to_non_nullable
as Map<String, List<EventEntity>>,null == menuIndex ? _self.menuIndex : menuIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Error implements EventListState {
  const Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EventListState.error()';
}


}




// dart format on
