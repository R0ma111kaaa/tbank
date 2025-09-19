import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/widgets/base_separator.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/auth/domain/entities/user/user_entity.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/expense_entity.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/participant_selector.dart';

Future<ExpenseEntry?> addExpenseDialog(
  BuildContext context,
  List<UserEntity> participants,
) async {
  final Map<UserEntity, TextEditingController> controllers = {
    for (var user in participants) user: TextEditingController(),
  };

  UserEntity? selectedPayer; // кто платит

  final screenHeight = MediaQuery.of(context).size.height;

  return showDialog<ExpenseEntry?>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Dialog(
            backgroundColor: context.colorExt.secondaryBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppDimensions.defaultBorderRadius,
              ),
            ),
            child: SizedBox(
              height: screenHeight * 0.75,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(
                      AppDimensions.defaultPadding * 2,
                    ),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(bottom: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Добавление траты',
                            style: context.textExt.montserratSemiBold20
                                .copyWith(color: context.colorExt.textColor),
                          ),
                          SizedBox(height: 16),
                          BaseSeparator(text: 'Кто платил'),
                          ParticipantSelector(
                            participants: participants,
                            initialSelected: selectedPayer != null
                                ? [selectedPayer!]
                                : [],
                            isMultiSelect: false,
                            showUnselectedAsAvatar: true,
                            onSelectionChanged: (selection) {
                              selectedPayer = selection.isNotEmpty
                                  ? selection.first
                                  : null;
                            },
                          ),
                          const SizedBox(
                            height: AppDimensions.defaultSpacing * 2,
                          ),
                          BaseSeparator(text: 'За кого сколько платил'),
                          ...participants.map((user) {
                            final controller = controllers[user]!;
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 6.0,
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      user.yandexJson.picture,
                                    ),
                                    radius: 20,
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: TextField(
                                        controller: controller,
                                        cursorColor: context.colorExt.textColor,
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          isDense: true,
                                          contentPadding: EdgeInsets.zero,
                                        ),
                                        style: context
                                            .textExt
                                            .montserratMedium14
                                            .copyWith(
                                              color: context.colorExt.textColor,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    '₽',
                                    style: context.textExt.montserratMedium14
                                        .copyWith(
                                          color: context.colorExt.textColor,
                                        ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      color: context.colorExt.secondaryBackgroundColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppDimensions.defaultPadding,
                        vertical: AppDimensions.defaultSpacing,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text(
                              context.tr.cancel,
                              style: context.textExt.montserratRegular16
                                  .copyWith(color: context.colorExt.textColor),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              if (selectedPayer == null) return;

                              final amounts = <UserEntity, double>{};
                              for (var entry in controllers.entries) {
                                final value =
                                    double.tryParse(entry.value.text) ?? 0;
                                amounts[entry.key] = value;
                              }

                              Navigator.of(context).pop(
                                ExpenseEntry(
                                  payer: selectedPayer!,
                                  amounts: amounts,
                                ),
                              );
                            },
                            child: Text(
                              context.tr.save,
                              style: context.textExt.montserratRegular16
                                  .copyWith(color: context.colorExt.textColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
