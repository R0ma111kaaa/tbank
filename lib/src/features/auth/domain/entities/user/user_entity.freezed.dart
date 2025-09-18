// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEntity {

 YandexJsonEntity get yandexJson; String? get id; String? get yandexId;
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEntityCopyWith<UserEntity> get copyWith => _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEntity&&(identical(other.yandexJson, yandexJson) || other.yandexJson == yandexJson)&&(identical(other.id, id) || other.id == id)&&(identical(other.yandexId, yandexId) || other.yandexId == yandexId));
}


@override
int get hashCode => Object.hash(runtimeType,yandexJson,id,yandexId);

@override
String toString() {
  return 'UserEntity(yandexJson: $yandexJson, id: $id, yandexId: $yandexId)';
}


}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res>  {
  factory $UserEntityCopyWith(UserEntity value, $Res Function(UserEntity) _then) = _$UserEntityCopyWithImpl;
@useResult
$Res call({
 YandexJsonEntity yandexJson, String? id, String? yandexId
});


$YandexJsonEntityCopyWith<$Res> get yandexJson;

}
/// @nodoc
class _$UserEntityCopyWithImpl<$Res>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? yandexJson = null,Object? id = freezed,Object? yandexId = freezed,}) {
  return _then(_self.copyWith(
yandexJson: null == yandexJson ? _self.yandexJson : yandexJson // ignore: cast_nullable_to_non_nullable
as YandexJsonEntity,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,yandexId: freezed == yandexId ? _self.yandexId : yandexId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YandexJsonEntityCopyWith<$Res> get yandexJson {
  
  return $YandexJsonEntityCopyWith<$Res>(_self.yandexJson, (value) {
    return _then(_self.copyWith(yandexJson: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserEntity].
extension UserEntityPatterns on UserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( YandexJsonEntity yandexJson,  String? id,  String? yandexId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.yandexJson,_that.id,_that.yandexId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( YandexJsonEntity yandexJson,  String? id,  String? yandexId)  $default,) {final _that = this;
switch (_that) {
case _UserEntity():
return $default(_that.yandexJson,_that.id,_that.yandexId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( YandexJsonEntity yandexJson,  String? id,  String? yandexId)?  $default,) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.yandexJson,_that.id,_that.yandexId);case _:
  return null;

}
}

}

/// @nodoc


class _UserEntity implements UserEntity {
  const _UserEntity({required this.yandexJson, this.id, this.yandexId});
  

@override final  YandexJsonEntity yandexJson;
@override final  String? id;
@override final  String? yandexId;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEntityCopyWith<_UserEntity> get copyWith => __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEntity&&(identical(other.yandexJson, yandexJson) || other.yandexJson == yandexJson)&&(identical(other.id, id) || other.id == id)&&(identical(other.yandexId, yandexId) || other.yandexId == yandexId));
}


@override
int get hashCode => Object.hash(runtimeType,yandexJson,id,yandexId);

@override
String toString() {
  return 'UserEntity(yandexJson: $yandexJson, id: $id, yandexId: $yandexId)';
}


}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(_UserEntity value, $Res Function(_UserEntity) _then) = __$UserEntityCopyWithImpl;
@override @useResult
$Res call({
 YandexJsonEntity yandexJson, String? id, String? yandexId
});


@override $YandexJsonEntityCopyWith<$Res> get yandexJson;

}
/// @nodoc
class __$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? yandexJson = null,Object? id = freezed,Object? yandexId = freezed,}) {
  return _then(_UserEntity(
yandexJson: null == yandexJson ? _self.yandexJson : yandexJson // ignore: cast_nullable_to_non_nullable
as YandexJsonEntity,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,yandexId: freezed == yandexId ? _self.yandexId : yandexId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YandexJsonEntityCopyWith<$Res> get yandexJson {
  
  return $YandexJsonEntityCopyWith<$Res>(_self.yandexJson, (value) {
    return _then(_self.copyWith(yandexJson: value));
  });
}
}

// dart format on
