// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yandex_json_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$YandexJsonEntity {

 String get id; String get email; String get firstName; String get lastName; String get displayName; String get picture; String get provider;
/// Create a copy of YandexJsonEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YandexJsonEntityCopyWith<YandexJsonEntity> get copyWith => _$YandexJsonEntityCopyWithImpl<YandexJsonEntity>(this as YandexJsonEntity, _$identity);

  /// Serializes this YandexJsonEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YandexJsonEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,firstName,lastName,displayName,picture,provider);

@override
String toString() {
  return 'YandexJsonEntity(id: $id, email: $email, firstName: $firstName, lastName: $lastName, displayName: $displayName, picture: $picture, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $YandexJsonEntityCopyWith<$Res>  {
  factory $YandexJsonEntityCopyWith(YandexJsonEntity value, $Res Function(YandexJsonEntity) _then) = _$YandexJsonEntityCopyWithImpl;
@useResult
$Res call({
 String id, String email, String firstName, String lastName, String displayName, String picture, String provider
});




}
/// @nodoc
class _$YandexJsonEntityCopyWithImpl<$Res>
    implements $YandexJsonEntityCopyWith<$Res> {
  _$YandexJsonEntityCopyWithImpl(this._self, this._then);

  final YandexJsonEntity _self;
  final $Res Function(YandexJsonEntity) _then;

/// Create a copy of YandexJsonEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? displayName = null,Object? picture = null,Object? provider = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [YandexJsonEntity].
extension YandexJsonEntityPatterns on YandexJsonEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YandexJsonEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YandexJsonEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YandexJsonEntity value)  $default,){
final _that = this;
switch (_that) {
case _YandexJsonEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YandexJsonEntity value)?  $default,){
final _that = this;
switch (_that) {
case _YandexJsonEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String firstName,  String lastName,  String displayName,  String picture,  String provider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YandexJsonEntity() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.displayName,_that.picture,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String firstName,  String lastName,  String displayName,  String picture,  String provider)  $default,) {final _that = this;
switch (_that) {
case _YandexJsonEntity():
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.displayName,_that.picture,_that.provider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String firstName,  String lastName,  String displayName,  String picture,  String provider)?  $default,) {final _that = this;
switch (_that) {
case _YandexJsonEntity() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.displayName,_that.picture,_that.provider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YandexJsonEntity implements YandexJsonEntity {
  const _YandexJsonEntity({required this.id, required this.email, required this.firstName, required this.lastName, required this.displayName, required this.picture, required this.provider});
  factory _YandexJsonEntity.fromJson(Map<String, dynamic> json) => _$YandexJsonEntityFromJson(json);

@override final  String id;
@override final  String email;
@override final  String firstName;
@override final  String lastName;
@override final  String displayName;
@override final  String picture;
@override final  String provider;

/// Create a copy of YandexJsonEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YandexJsonEntityCopyWith<_YandexJsonEntity> get copyWith => __$YandexJsonEntityCopyWithImpl<_YandexJsonEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YandexJsonEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YandexJsonEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.picture, picture) || other.picture == picture)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,firstName,lastName,displayName,picture,provider);

@override
String toString() {
  return 'YandexJsonEntity(id: $id, email: $email, firstName: $firstName, lastName: $lastName, displayName: $displayName, picture: $picture, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$YandexJsonEntityCopyWith<$Res> implements $YandexJsonEntityCopyWith<$Res> {
  factory _$YandexJsonEntityCopyWith(_YandexJsonEntity value, $Res Function(_YandexJsonEntity) _then) = __$YandexJsonEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String firstName, String lastName, String displayName, String picture, String provider
});




}
/// @nodoc
class __$YandexJsonEntityCopyWithImpl<$Res>
    implements _$YandexJsonEntityCopyWith<$Res> {
  __$YandexJsonEntityCopyWithImpl(this._self, this._then);

  final _YandexJsonEntity _self;
  final $Res Function(_YandexJsonEntity) _then;

/// Create a copy of YandexJsonEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? displayName = null,Object? picture = null,Object? provider = null,}) {
  return _then(_YandexJsonEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,picture: null == picture ? _self.picture : picture // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
