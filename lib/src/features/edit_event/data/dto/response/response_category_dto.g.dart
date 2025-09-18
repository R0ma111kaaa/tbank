// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseCategoryDto _$ResponseCategoryDtoFromJson(Map<String, dynamic> json) =>
    ResponseCategoryDto(
      categoryId: json['category_id'] as String,
      categoryName: json['category_name'] as String,
      tripId: json['trip_id'] as String,
      userId: json['user_id'] as String,
      estimatedExpense: (json['estimated_expense'] as num?)?.toDouble(),
      expenses:
          (json['expenses'] as List<dynamic>?)
              ?.map(
                (e) => ExpenseResponseDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ResponseCategoryDtoToJson(
  ResponseCategoryDto instance,
) => <String, dynamic>{
  'category_id': instance.categoryId,
  'category_name': instance.categoryName,
  'trip_id': instance.tripId,
  'user_id': instance.userId,
  'expenses': instance.expenses,
  'estimated_expense': instance.estimatedExpense,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
