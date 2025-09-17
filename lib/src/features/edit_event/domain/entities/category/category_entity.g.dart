// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) =>
    CategoryEntity(
      categoryName: json['category_name'] as String,
      estimatedExpense: (json['estimated_expense'] as num).toDouble(),
    );

Map<String, dynamic> _$CategoryEntityToJson(CategoryEntity instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'estimated_expense': instance.estimatedExpense,
    };
