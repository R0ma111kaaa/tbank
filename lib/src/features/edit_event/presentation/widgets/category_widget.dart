import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    required this.categoryName,
    required this.totalPlanned,
    this.totalSpent,
    super.key,
  });

  final String categoryName;
  final double totalPlanned;
  final double? totalSpent;

  @override
  Widget build(BuildContext context) {
    final moneyString =
        (totalSpent != null
            ? '${context.tr.rubles(totalSpent.toString())} / '
            : '') +
        context.tr.rubles(totalPlanned);

    // проверяем, если totalSpent больше totalPlanned — красим в красный
    final moneyColor = (totalSpent != null && totalSpent! > totalPlanned)
        ? Colors.red
        : context.colorExt.textColor;

    return Container(
      width: double.infinity,
      height: AppDimensions.categoryWidgetHeight,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.defaultPadding,
      ),
      decoration: BoxDecoration(
        color: context.colorExt.secondaryBackgroundColor,
        borderRadius: BorderRadius.circular(
          AppDimensions.categoryWidgetBorderRadius,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            categoryName,
            style: context.textExt.montserratRegular18.copyWith(
              color: context.colorExt.textColor,
            ),
          ),
          Text(
            moneyString,
            style: context.textExt.montserratRegular18.copyWith(
              color: moneyColor,
            ),
          ),
        ],
      ),
    );
  }
}
