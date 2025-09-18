// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_expense_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewExpenseEntity {

 String? get title; CategoryResponseEntity? get entity; double? get spentMoney; int? get userCount;
/// Create a copy of NewExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewExpenseEntityCopyWith<NewExpenseEntity> get copyWith => _$NewExpenseEntityCopyWithImpl<NewExpenseEntity>(this as NewExpenseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewExpenseEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.spentMoney, spentMoney) || other.spentMoney == spentMoney)&&(identical(other.userCount, userCount) || other.userCount == userCount));
}


@override
int get hashCode => Object.hash(runtimeType,title,entity,spentMoney,userCount);

@override
String toString() {
  return 'NewExpenseEntity(title: $title, entity: $entity, spentMoney: $spentMoney, userCount: $userCount)';
}


}

/// @nodoc
abstract mixin class $NewExpenseEntityCopyWith<$Res>  {
  factory $NewExpenseEntityCopyWith(NewExpenseEntity value, $Res Function(NewExpenseEntity) _then) = _$NewExpenseEntityCopyWithImpl;
@useResult
$Res call({
 String? title, CategoryResponseEntity? entity, double? spentMoney, int? userCount
});




}
/// @nodoc
class _$NewExpenseEntityCopyWithImpl<$Res>
    implements $NewExpenseEntityCopyWith<$Res> {
  _$NewExpenseEntityCopyWithImpl(this._self, this._then);

  final NewExpenseEntity _self;
  final $Res Function(NewExpenseEntity) _then;

/// Create a copy of NewExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? entity = freezed,Object? spentMoney = freezed,Object? userCount = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as CategoryResponseEntity?,spentMoney: freezed == spentMoney ? _self.spentMoney : spentMoney // ignore: cast_nullable_to_non_nullable
as double?,userCount: freezed == userCount ? _self.userCount : userCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NewExpenseEntity].
extension NewExpenseEntityPatterns on NewExpenseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewExpenseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewExpenseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewExpenseEntity value)  $default,){
final _that = this;
switch (_that) {
case _NewExpenseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewExpenseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NewExpenseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  CategoryResponseEntity? entity,  double? spentMoney,  int? userCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewExpenseEntity() when $default != null:
return $default(_that.title,_that.entity,_that.spentMoney,_that.userCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  CategoryResponseEntity? entity,  double? spentMoney,  int? userCount)  $default,) {final _that = this;
switch (_that) {
case _NewExpenseEntity():
return $default(_that.title,_that.entity,_that.spentMoney,_that.userCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  CategoryResponseEntity? entity,  double? spentMoney,  int? userCount)?  $default,) {final _that = this;
switch (_that) {
case _NewExpenseEntity() when $default != null:
return $default(_that.title,_that.entity,_that.spentMoney,_that.userCount);case _:
  return null;

}
}

}

/// @nodoc


class _NewExpenseEntity implements NewExpenseEntity {
  const _NewExpenseEntity({this.title, this.entity, this.spentMoney, this.userCount});
  

@override final  String? title;
@override final  CategoryResponseEntity? entity;
@override final  double? spentMoney;
@override final  int? userCount;

/// Create a copy of NewExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewExpenseEntityCopyWith<_NewExpenseEntity> get copyWith => __$NewExpenseEntityCopyWithImpl<_NewExpenseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewExpenseEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.spentMoney, spentMoney) || other.spentMoney == spentMoney)&&(identical(other.userCount, userCount) || other.userCount == userCount));
}


@override
int get hashCode => Object.hash(runtimeType,title,entity,spentMoney,userCount);

@override
String toString() {
  return 'NewExpenseEntity(title: $title, entity: $entity, spentMoney: $spentMoney, userCount: $userCount)';
}


}

/// @nodoc
abstract mixin class _$NewExpenseEntityCopyWith<$Res> implements $NewExpenseEntityCopyWith<$Res> {
  factory _$NewExpenseEntityCopyWith(_NewExpenseEntity value, $Res Function(_NewExpenseEntity) _then) = __$NewExpenseEntityCopyWithImpl;
@override @useResult
$Res call({
 String? title, CategoryResponseEntity? entity, double? spentMoney, int? userCount
});




}
/// @nodoc
class __$NewExpenseEntityCopyWithImpl<$Res>
    implements _$NewExpenseEntityCopyWith<$Res> {
  __$NewExpenseEntityCopyWithImpl(this._self, this._then);

  final _NewExpenseEntity _self;
  final $Res Function(_NewExpenseEntity) _then;

/// Create a copy of NewExpenseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? entity = freezed,Object? spentMoney = freezed,Object? userCount = freezed,}) {
  return _then(_NewExpenseEntity(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as CategoryResponseEntity?,spentMoney: freezed == spentMoney ? _self.spentMoney : spentMoney // ignore: cast_nullable_to_non_nullable
as double?,userCount: freezed == userCount ? _self.userCount : userCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
