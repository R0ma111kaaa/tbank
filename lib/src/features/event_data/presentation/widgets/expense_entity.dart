import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';

class ExpenseEntry {
  final UserEntity payer; // кто платит
  final Map<UserEntity, double> amounts; // за кого сколько

  ExpenseEntry({required this.payer, required this.amounts});
}
