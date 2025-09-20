// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventListEntity {

 List<EventEntity> get ownedTrips; List<EventEntity> get participatingTrips;
/// Create a copy of EventListEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventListEntityCopyWith<EventListEntity> get copyWith => _$EventListEntityCopyWithImpl<EventListEntity>(this as EventListEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventListEntity&&const DeepCollectionEquality().equals(other.ownedTrips, ownedTrips)&&const DeepCollectionEquality().equals(other.participatingTrips, participatingTrips));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ownedTrips),const DeepCollectionEquality().hash(participatingTrips));

@override
String toString() {
  return 'EventListEntity(ownedTrips: $ownedTrips, participatingTrips: $participatingTrips)';
}


}

/// @nodoc
abstract mixin class $EventListEntityCopyWith<$Res>  {
  factory $EventListEntityCopyWith(EventListEntity value, $Res Function(EventListEntity) _then) = _$EventListEntityCopyWithImpl;
@useResult
$Res call({
 List<EventEntity> ownedTrips, List<EventEntity> participatingTrips
});




}
/// @nodoc
class _$EventListEntityCopyWithImpl<$Res>
    implements $EventListEntityCopyWith<$Res> {
  _$EventListEntityCopyWithImpl(this._self, this._then);

  final EventListEntity _self;
  final $Res Function(EventListEntity) _then;

/// Create a copy of EventListEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ownedTrips = null,Object? participatingTrips = null,}) {
  return _then(_self.copyWith(
ownedTrips: null == ownedTrips ? _self.ownedTrips : ownedTrips // ignore: cast_nullable_to_non_nullable
as List<EventEntity>,participatingTrips: null == participatingTrips ? _self.participatingTrips : participatingTrips // ignore: cast_nullable_to_non_nullable
as List<EventEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [EventListEntity].
extension EventListEntityPatterns on EventListEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventListEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventListEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventListEntity value)  $default,){
final _that = this;
switch (_that) {
case _EventListEntity():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventListEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EventListEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EventEntity> ownedTrips,  List<EventEntity> participatingTrips)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventListEntity() when $default != null:
return $default(_that.ownedTrips,_that.participatingTrips);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EventEntity> ownedTrips,  List<EventEntity> participatingTrips)  $default,) {final _that = this;
switch (_that) {
case _EventListEntity():
return $default(_that.ownedTrips,_that.participatingTrips);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EventEntity> ownedTrips,  List<EventEntity> participatingTrips)?  $default,) {final _that = this;
switch (_that) {
case _EventListEntity() when $default != null:
return $default(_that.ownedTrips,_that.participatingTrips);case _:
  return null;

}
}

}

/// @nodoc


class _EventListEntity extends EventListEntity {
  const _EventListEntity({required final  List<EventEntity> ownedTrips, required final  List<EventEntity> participatingTrips}): _ownedTrips = ownedTrips,_participatingTrips = participatingTrips,super._();
  

 final  List<EventEntity> _ownedTrips;
@override List<EventEntity> get ownedTrips {
  if (_ownedTrips is EqualUnmodifiableListView) return _ownedTrips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ownedTrips);
}

 final  List<EventEntity> _participatingTrips;
@override List<EventEntity> get participatingTrips {
  if (_participatingTrips is EqualUnmodifiableListView) return _participatingTrips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participatingTrips);
}


/// Create a copy of EventListEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventListEntityCopyWith<_EventListEntity> get copyWith => __$EventListEntityCopyWithImpl<_EventListEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventListEntity&&const DeepCollectionEquality().equals(other._ownedTrips, _ownedTrips)&&const DeepCollectionEquality().equals(other._participatingTrips, _participatingTrips));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ownedTrips),const DeepCollectionEquality().hash(_participatingTrips));

@override
String toString() {
  return 'EventListEntity(ownedTrips: $ownedTrips, participatingTrips: $participatingTrips)';
}


}

/// @nodoc
abstract mixin class _$EventListEntityCopyWith<$Res> implements $EventListEntityCopyWith<$Res> {
  factory _$EventListEntityCopyWith(_EventListEntity value, $Res Function(_EventListEntity) _then) = __$EventListEntityCopyWithImpl;
@override @useResult
$Res call({
 List<EventEntity> ownedTrips, List<EventEntity> participatingTrips
});




}
/// @nodoc
class __$EventListEntityCopyWithImpl<$Res>
    implements _$EventListEntityCopyWith<$Res> {
  __$EventListEntityCopyWithImpl(this._self, this._then);

  final _EventListEntity _self;
  final $Res Function(_EventListEntity) _then;

/// Create a copy of EventListEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ownedTrips = null,Object? participatingTrips = null,}) {
  return _then(_EventListEntity(
ownedTrips: null == ownedTrips ? _self._ownedTrips : ownedTrips // ignore: cast_nullable_to_non_nullable
as List<EventEntity>,participatingTrips: null == participatingTrips ? _self._participatingTrips : participatingTrips // ignore: cast_nullable_to_non_nullable
as List<EventEntity>,
  ));
}


}

// dart format on
