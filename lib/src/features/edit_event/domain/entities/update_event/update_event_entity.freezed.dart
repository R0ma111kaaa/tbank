// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateEventEntity {

 String get tripName; DateTime get plannedDate; DateTime get exitDate; List<CategoryEntity> get categories;
/// Create a copy of UpdateEventEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEventEntityCopyWith<UpdateEventEntity> get copyWith => _$UpdateEventEntityCopyWithImpl<UpdateEventEntity>(this as UpdateEventEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEventEntity&&(identical(other.tripName, tripName) || other.tripName == tripName)&&(identical(other.plannedDate, plannedDate) || other.plannedDate == plannedDate)&&(identical(other.exitDate, exitDate) || other.exitDate == exitDate)&&const DeepCollectionEquality().equals(other.categories, categories));
}


@override
int get hashCode => Object.hash(runtimeType,tripName,plannedDate,exitDate,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'UpdateEventEntity(tripName: $tripName, plannedDate: $plannedDate, exitDate: $exitDate, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $UpdateEventEntityCopyWith<$Res>  {
  factory $UpdateEventEntityCopyWith(UpdateEventEntity value, $Res Function(UpdateEventEntity) _then) = _$UpdateEventEntityCopyWithImpl;
@useResult
$Res call({
 String tripName, DateTime plannedDate, DateTime exitDate, List<CategoryEntity> categories
});




}
/// @nodoc
class _$UpdateEventEntityCopyWithImpl<$Res>
    implements $UpdateEventEntityCopyWith<$Res> {
  _$UpdateEventEntityCopyWithImpl(this._self, this._then);

  final UpdateEventEntity _self;
  final $Res Function(UpdateEventEntity) _then;

/// Create a copy of UpdateEventEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tripName = null,Object? plannedDate = null,Object? exitDate = null,Object? categories = null,}) {
  return _then(_self.copyWith(
tripName: null == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String,plannedDate: null == plannedDate ? _self.plannedDate : plannedDate // ignore: cast_nullable_to_non_nullable
as DateTime,exitDate: null == exitDate ? _self.exitDate : exitDate // ignore: cast_nullable_to_non_nullable
as DateTime,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateEventEntity].
extension UpdateEventEntityPatterns on UpdateEventEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateEventEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateEventEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateEventEntity value)  $default,){
final _that = this;
switch (_that) {
case _UpdateEventEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateEventEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateEventEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tripName,  DateTime plannedDate,  DateTime exitDate,  List<CategoryEntity> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateEventEntity() when $default != null:
return $default(_that.tripName,_that.plannedDate,_that.exitDate,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tripName,  DateTime plannedDate,  DateTime exitDate,  List<CategoryEntity> categories)  $default,) {final _that = this;
switch (_that) {
case _UpdateEventEntity():
return $default(_that.tripName,_that.plannedDate,_that.exitDate,_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tripName,  DateTime plannedDate,  DateTime exitDate,  List<CategoryEntity> categories)?  $default,) {final _that = this;
switch (_that) {
case _UpdateEventEntity() when $default != null:
return $default(_that.tripName,_that.plannedDate,_that.exitDate,_that.categories);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateEventEntity extends UpdateEventEntity {
  const _UpdateEventEntity({required this.tripName, required this.plannedDate, required this.exitDate, final  List<CategoryEntity> categories = const <CategoryEntity>[]}): _categories = categories,super._();
  

@override final  String tripName;
@override final  DateTime plannedDate;
@override final  DateTime exitDate;
 final  List<CategoryEntity> _categories;
@override@JsonKey() List<CategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of UpdateEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateEventEntityCopyWith<_UpdateEventEntity> get copyWith => __$UpdateEventEntityCopyWithImpl<_UpdateEventEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateEventEntity&&(identical(other.tripName, tripName) || other.tripName == tripName)&&(identical(other.plannedDate, plannedDate) || other.plannedDate == plannedDate)&&(identical(other.exitDate, exitDate) || other.exitDate == exitDate)&&const DeepCollectionEquality().equals(other._categories, _categories));
}


@override
int get hashCode => Object.hash(runtimeType,tripName,plannedDate,exitDate,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'UpdateEventEntity(tripName: $tripName, plannedDate: $plannedDate, exitDate: $exitDate, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$UpdateEventEntityCopyWith<$Res> implements $UpdateEventEntityCopyWith<$Res> {
  factory _$UpdateEventEntityCopyWith(_UpdateEventEntity value, $Res Function(_UpdateEventEntity) _then) = __$UpdateEventEntityCopyWithImpl;
@override @useResult
$Res call({
 String tripName, DateTime plannedDate, DateTime exitDate, List<CategoryEntity> categories
});




}
/// @nodoc
class __$UpdateEventEntityCopyWithImpl<$Res>
    implements _$UpdateEventEntityCopyWith<$Res> {
  __$UpdateEventEntityCopyWithImpl(this._self, this._then);

  final _UpdateEventEntity _self;
  final $Res Function(_UpdateEventEntity) _then;

/// Create a copy of UpdateEventEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tripName = null,Object? plannedDate = null,Object? exitDate = null,Object? categories = null,}) {
  return _then(_UpdateEventEntity(
tripName: null == tripName ? _self.tripName : tripName // ignore: cast_nullable_to_non_nullable
as String,plannedDate: null == plannedDate ? _self.plannedDate : plannedDate // ignore: cast_nullable_to_non_nullable
as DateTime,exitDate: null == exitDate ? _self.exitDate : exitDate // ignore: cast_nullable_to_non_nullable
as DateTime,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,
  ));
}


}

// dart format on
