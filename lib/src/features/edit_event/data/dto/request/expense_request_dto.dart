import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_request_dto.g.dart';

@JsonSerializable()
class ExpenseRequestDto {
  const ExpenseRequestDto({
    required this.expenseName,
    required this.amount,
    required this.categoryId,
    this.createdAt,
    this.updatedAt,
  });

  @JsonKey(name: 'expense_name')
  final String expenseName;

  @JsonKey(name: 'amount')
  final double amount;

  @JsonKey(name: 'category_id')
  final String categoryId;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  factory ExpenseRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ExpenseRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ExpenseRequestDtoToJson(this);
}
