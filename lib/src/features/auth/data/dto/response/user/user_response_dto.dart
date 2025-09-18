import 'package:json_annotation/json_annotation.dart';

part 'user_response_dto.g.dart';

@JsonSerializable()
class UserResponseDto {
  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'yandex_id')
  final String? yandexId;

  @JsonKey(name: 'yandex_json')
  final Object? yandexJson;

  UserResponseDto({
    required this.id,
    required this.yandexId,
    required this.yandexJson,
  });

  factory UserResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDtoFromJson(json);
}
