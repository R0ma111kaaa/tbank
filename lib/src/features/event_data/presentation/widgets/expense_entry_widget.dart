import 'package:flutter/material.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/expense_entity.dart';

class ExpenseEntryWidget extends StatelessWidget {
  final ExpenseEntry entry;

  const ExpenseEntryWidget({super.key, required this.entry});

  @override
  Widget build(BuildContext context) {
    final totalAmount = entry.amounts.values.fold<double>(0, (a, b) => a + b);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Общая сумма
          Text(
            '\$${totalAmount.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 12),

          // Кто платит
          CircleAvatar(
            radius: 20,
            child: Image.network(entry.payer.yandexJson.picture),
          ),
          const SizedBox(width: 8),

          // Стрелка вправо
          const Icon(Icons.arrow_forward, size: 24),

          const SizedBox(width: 8),

          // За кого платят (Stacked Avatars)
          Stack(
            clipBehavior: Clip.none,
            children: entry.amounts.keys.map((user) {
              final index = entry.amounts.keys.toList().indexOf(user);
              return Positioned(
                left: index * 20.0, // смещение, чтобы аватары накладывались
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.blueGrey,
                  child: Image.network(
                    user.yandexJson.picture, // первая буква
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
