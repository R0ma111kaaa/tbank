import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_response_dto.g.dart';

@JsonSerializable()
class ExpenseResponseDto {
  const ExpenseResponseDto({
    required this.expenseId,
    this.expenseName,
    this.amount = 0,
    required this.userId,
    required this.tripId,
    required this.categoryId,
    this.createdAt,
    this.updatedAt,
  });

  @JsonKey(name: 'expense_id')
  final String expenseId;

  @JsonKey(name: 'expense_name')
  final String? expenseName;

  @JsonKey(name: 'amount')
  final double amount;

  @JsonKey(name: 'user_id')
  final String userId;

  @JsonKey(name: 'trip_id')
  final String? tripId;

  @JsonKey(name: 'category_id')
  final String? categoryId;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  factory ExpenseResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ExpenseResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ExpenseResponseDtoToJson(this);
}
