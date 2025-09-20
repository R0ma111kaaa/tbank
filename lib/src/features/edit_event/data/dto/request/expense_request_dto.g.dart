// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpenseRequestDto _$ExpenseRequestDtoFromJson(Map<String, dynamic> json) =>
    ExpenseRequestDto(
      expenseName: json['expense_name'] as String,
      amount: (json['amount'] as num).toDouble(),
      categoryId: json['category_id'] as String,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ExpenseRequestDtoToJson(ExpenseRequestDto instance) =>
    <String, dynamic>{
      'expense_name': instance.expenseName,
      'amount': instance.amount,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
