import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/edit_event/data/dto/response/expense_response_dto.dart';

part 'response_category_dto.g.dart';

@JsonSerializable()
class ResponseCategoryDto {
  const ResponseCategoryDto({
    required this.categoryId,
    required this.categoryName,
    required this.tripId,
    required this.userId,
    required this.estimatedExpense,
    this.expenses = const [],
    this.createdAt,
    this.updatedAt,
  });

  @JsonKey(name: 'category_id')
  final String categoryId;

  @JsonKey(name: 'category_name')
  final String categoryName;

  @JsonKey(name: 'trip_id')
  final String tripId;

  @JsonKey(name: 'user_id')
  final String userId;

  @JsonKey(name: 'expenses')
  final List<ExpenseResponseDto> expenses;

  @JsonKey(name: 'estimated_expense')
  final double? estimatedExpense;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  factory ResponseCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseCategoryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseCategoryDtoToJson(this);
}
