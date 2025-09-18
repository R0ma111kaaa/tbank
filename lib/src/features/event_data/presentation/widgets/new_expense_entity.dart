import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tbank/src/features/edit_event/domain/entities/category_response_entity/category_response_entity.dart';

part 'new_expense_entity.freezed.dart';

@freezed
abstract class NewExpenseEntity with _$NewExpenseEntity {
  const factory NewExpenseEntity({
    String? title,
    CategoryResponseEntity? entity,
    double? spentMoney,
  }) = _NewExpenseEntity;
}
