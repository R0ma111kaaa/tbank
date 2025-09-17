// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventEntity {

 String get tripId; String? get tripName; DateTime? get plannedDate; DateTime? get exitDate; int get participantCount; double get totalSpent; double get totalPlanned;
/// Create a copy of EventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventEntityCopyWith<EventEntity> get copyWith => _$EventEntityCopyWithImpl<EventEntity>(this as EventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventEntity&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.tripName, tripName) || other.tripName == tripName)&&(identical(other.plannedDate, plannedDate) || other.plannedDate == plannedDate)&&(identical(other.exitDate, exitDate) || other.exitDate == exitDate)&&(identical(other.participantCount, participantCount) || other.participantCount == participantCount)&&(identical(other.totalSpent, totalSpent) || other.totalSpent == totalSpent)&&(identical(other.totalPlanned, totalPlanned) || other.totalPlanned == totalPlanned));
}


@override
int get hashCode => Object.hash(runtimeType,tripId,tripName,plannedDate,exitDate,participantCount,totalSpent,totalPlanned);

@override
String toString() {
  return 'EventEntity(tripId: $tripId, tripName: $tripName, plannedDate: $plannedDate, exitDate: $exitDate, participantCount: $participantCount, totalSpent: $totalSpent, totalPlanned: $totalPlanned)';
}


}

/// @nodoc
abstract mixin class $EventEntityCopyWith<$Res>  {
  factory $EventEntityCopyWith(EventEntity value, $Res Function(EventEntity) _then) = _$EventEntityCopyWithImpl;
@useResult
$Res call({
 String tripId, String? tripName, DateTime? plannedDate, DateTime? exitDate, int participantCount, double totalSpent, double totalPlanned
});




}
/// @nodoc
class _$EventEntityCopyWithImpl<$Res>
    implements $EventEntityCopyWith<$Res> {
  _$EventEntityCopyWithImpl(this._self, this._then);

  final EventEntity _self;
  final $Res Function(EventEntity) _then;

/// Create a copy of EventEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripId = null,Object? tripName = freezed,Object? plannedDate = freezed,Object? exitDate = freezed,Object? participantCount = null,Object? totalSpent = null,Object? totalPlanned = null,}) {
  return _then(_self.copyWith(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,tripName: freezed == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String?,plannedDate: freezed == plannedDate ? _self.plannedDate : plannedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,exitDate: freezed == exitDate ? _self.exitDate : exitDate // ignore: cast_nullable_to_non_nullable
as DateTime?,participantCount: null == participantCount ? _self.participantCount : participantCount // ignore: cast_nullable_to_non_nullable
as int,totalSpent: null == totalSpent ? _self.totalSpent : totalSpent // ignore: cast_nullable_to_non_nullable
as double,totalPlanned: null == totalPlanned ? _self.totalPlanned : totalPlanned // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EventEntity].
extension EventEntityPatterns on EventEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventEntity value)  $default,){
final _that = this;
switch (_that) {
case _EventEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EventEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tripId,  String? tripName,  DateTime? plannedDate,  DateTime? exitDate,  int participantCount,  double totalSpent,  double totalPlanned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventEntity() when $default != null:
return $default(_that.tripId,_that.tripName,_that.plannedDate,_that.exitDate,_that.participantCount,_that.totalSpent,_that.totalPlanned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tripId,  String? tripName,  DateTime? plannedDate,  DateTime? exitDate,  int participantCount,  double totalSpent,  double totalPlanned)  $default,) {final _that = this;
switch (_that) {
case _EventEntity():
return $default(_that.tripId,_that.tripName,_that.plannedDate,_that.exitDate,_that.participantCount,_that.totalSpent,_that.totalPlanned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tripId,  String? tripName,  DateTime? plannedDate,  DateTime? exitDate,  int participantCount,  double totalSpent,  double totalPlanned)?  $default,) {final _that = this;
switch (_that) {
case _EventEntity() when $default != null:
return $default(_that.tripId,_that.tripName,_that.plannedDate,_that.exitDate,_that.participantCount,_that.totalSpent,_that.totalPlanned);case _:
  return null;

}
}

}

/// @nodoc


class _EventEntity extends EventEntity {
  const _EventEntity({required this.tripId, required this.tripName, required this.plannedDate, required this.exitDate, required this.participantCount, required this.totalSpent, required this.totalPlanned}): super._();
  

@override final  String tripId;
@override final  String? tripName;
@override final  DateTime? plannedDate;
@override final  DateTime? exitDate;
@override final  int participantCount;
@override final  double totalSpent;
@override final  double totalPlanned;

/// Create a copy of EventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventEntityCopyWith<_EventEntity> get copyWith => __$EventEntityCopyWithImpl<_EventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventEntity&&(identical(other.tripId, tripId) || other.tripId == tripId)&&(identical(other.tripName, tripName) || other.tripName == tripName)&&(identical(other.plannedDate, plannedDate) || other.plannedDate == plannedDate)&&(identical(other.exitDate, exitDate) || other.exitDate == exitDate)&&(identical(other.participantCount, participantCount) || other.participantCount == participantCount)&&(identical(other.totalSpent, totalSpent) || other.totalSpent == totalSpent)&&(identical(other.totalPlanned, totalPlanned) || other.totalPlanned == totalPlanned));
}


@override
int get hashCode => Object.hash(runtimeType,tripId,tripName,plannedDate,exitDate,participantCount,totalSpent,totalPlanned);

@override
String toString() {
  return 'EventEntity(tripId: $tripId, tripName: $tripName, plannedDate: $plannedDate, exitDate: $exitDate, participantCount: $participantCount, totalSpent: $totalSpent, totalPlanned: $totalPlanned)';
}


}

/// @nodoc
abstract mixin class _$EventEntityCopyWith<$Res> implements $EventEntityCopyWith<$Res> {
  factory _$EventEntityCopyWith(_EventEntity value, $Res Function(_EventEntity) _then) = __$EventEntityCopyWithImpl;
@override @useResult
$Res call({
 String tripId, String? tripName, DateTime? plannedDate, DateTime? exitDate, int participantCount, double totalSpent, double totalPlanned
});




}
/// @nodoc
class __$EventEntityCopyWithImpl<$Res>
    implements _$EventEntityCopyWith<$Res> {
  __$EventEntityCopyWithImpl(this._self, this._then);

  final _EventEntity _self;
  final $Res Function(_EventEntity) _then;

/// Create a copy of EventEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripId = null,Object? tripName = freezed,Object? plannedDate = freezed,Object? exitDate = freezed,Object? participantCount = null,Object? totalSpent = null,Object? totalPlanned = null,}) {
  return _then(_EventEntity(
tripId: null == tripId ? _self.tripId : tripId // ignore: cast_nullable_to_non_nullable
as String,tripName: freezed == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String?,plannedDate: freezed == plannedDate ? _self.plannedDate : plannedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,exitDate: freezed == exitDate ? _self.exitDate : exitDate // ignore: cast_nullable_to_non_nullable
as DateTime?,participantCount: null == participantCount ? _self.participantCount : participantCount // ignore: cast_nullable_to_non_nullable
as int,totalSpent: null == totalSpent ? _self.totalSpent : totalSpent // ignore: cast_nullable_to_non_nullable
as double,totalPlanned: null == totalPlanned ? _self.totalPlanned : totalPlanned // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
