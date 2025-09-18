import 'package:tbank/src/features/edit_event/data/dto/response/response_category_dto.dart';
import 'package:tbank/src/features/edit_event/domain/entities/expense_response/expense_response_entity.dart';

class CategoryResponseEntity {
  final String categoryId;
  final String categoryName;
  final String tripId;
  final String userId;
  final double totalSpent;
  final double totalPlanned;
  final List<ExpenseResponseEntity> expenses;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  CategoryResponseEntity({
    required this.categoryId,
    required this.categoryName,
    required this.tripId,
    required this.userId,
    required this.expenses,
    required this.totalSpent,
    required this.totalPlanned,
    this.createdAt,
    this.updatedAt,
  });

  factory CategoryResponseEntity.fromDto(ResponseCategoryDto dto) {
    return CategoryResponseEntity(
      categoryId: dto.categoryId,
      categoryName: dto.categoryName,
      tripId: dto.tripId,
      userId: dto.userId,
      totalSpent: dto.expenses.isEmpty
          ? 0
          : dto.expenses.map((e) => e.amount).fold(0.0, (a, b) => a + b),
      totalPlanned: dto.estimatedExpense ?? 0.0,
      expenses: dto.expenses
          .map((e) => ExpenseResponseEntity.fromDto(e))
          .toList(),
      createdAt: dto.createdAt != null
          ? DateTime.tryParse(dto.createdAt!)
          : null,
      updatedAt: dto.updatedAt != null
          ? DateTime.tryParse(dto.updatedAt!)
          : null,
    );
  }
}
