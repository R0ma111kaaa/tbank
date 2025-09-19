import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/widgets/base_separator.dart';
import 'package:tbank/src/features/event_data/presentation/bloc/event_data_bloc.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/participant_selector.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/primary_double_field.dart';

class PorovnuWidget extends StatelessWidget {
  const PorovnuWidget({
    super.key,
    required this.eventDatabloc,
    required this.addingExpenseState,
  });

  final EventDataBloc eventDatabloc;
  final AddingExpence addingExpenseState;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.colorExt.textColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BaseSeparator(
            text: 'Кто тратил',
            color: context.colorExt.primaryBackgroundColor,
          ),
          ParticipantSelector(
            participants: addingExpenseState.participants,
            isMultiSelect: true,
            onSelectionChanged: (selected) {
              eventDatabloc.add(
                EventDataEvent.updateExpense(
                  addingExpenseState.newExpenseEntity.copyWith(
                    userCount: selected.length,
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 12),
          BaseSeparator(
            text: 'По сколько тратили',
            color: context.colorExt.primaryBackgroundColor,
          ),
          PrimaryDoubleField(
            onChanged: (value) {
              eventDatabloc.add(
                EventDataEvent.updateExpense(
                  addingExpenseState.newExpenseEntity.copyWith(
                    spentMoney: value,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
