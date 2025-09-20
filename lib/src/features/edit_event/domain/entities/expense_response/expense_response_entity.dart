import 'package:tbank/src/features/edit_event/data/dto/response/expense_response_dto.dart';

class ExpenseResponseEntity {
  final String expenseId;
  final String? expenseName;
  final double amount;
  final String? userId;
  final String? tripId;
  final String? categoryId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ExpenseResponseEntity({
    required this.expenseId,
    required this.expenseName,
    required this.amount,
    required this.userId,
    required this.tripId,
    required this.categoryId,
    this.createdAt,
    this.updatedAt,
  });

  factory ExpenseResponseEntity.fromDto(ExpenseResponseDto dto) {
    return ExpenseResponseEntity(
      expenseId: dto.expenseId,
      expenseName: dto.expenseName,
      amount: dto.amount,
      userId: dto.userId,
      tripId: dto.tripId,
      categoryId: dto.categoryId,
      createdAt: dto.createdAt != null
          ? DateTime.tryParse(dto.createdAt!)
          : null,
      updatedAt: dto.updatedAt != null
          ? DateTime.tryParse(dto.updatedAt!)
          : null,
    );
  }
}
