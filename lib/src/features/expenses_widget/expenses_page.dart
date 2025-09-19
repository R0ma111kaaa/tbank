import 'package:flutter/material.dart';
import 'package:tbank/src/features/edit_event/domain/entities/expense_response/expense_response_entity.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({super.key, required this.expenses});

  final List<ExpenseResponseEntity> expenses;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
