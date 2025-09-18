// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yandex_json_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_YandexJsonEntity _$YandexJsonEntityFromJson(Map<String, dynamic> json) =>
    _YandexJsonEntity(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      displayName: json['display_name'] as String,
      picture: json['picture'] as String,
      provider: json['provider'] as String,
    );

Map<String, dynamic> _$YandexJsonEntityToJson(_YandexJsonEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'display_name': instance.displayName,
      'picture': instance.picture,
      'provider': instance.provider,
    };
