// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpenseResponseDto _$ExpenseResponseDtoFromJson(Map<String, dynamic> json) =>
    ExpenseResponseDto(
      expenseId: json['expense_id'] as String,
      expenseName: json['expense_name'] as String?,
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
      userId: json['user_id'] as String,
      tripId: json['trip_id'] as String?,
      categoryId: json['category_id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ExpenseResponseDtoToJson(ExpenseResponseDto instance) =>
    <String, dynamic>{
      'expense_id': instance.expenseId,
      'expense_name': instance.expenseName,
      'amount': instance.amount,
      'user_id': instance.userId,
      'trip_id': instance.tripId,
      'category_id': instance.categoryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
