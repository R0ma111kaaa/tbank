import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';

class DateRangeView extends StatelessWidget {
  final DateTime? startDate;
  final DateTime? endDate;

  const DateRangeView({super.key, this.startDate, this.endDate});

  Widget _buildDateRow(
    BuildContext context,
    Widget labelWidget,
    DateTime? date,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        labelWidget,
        const SizedBox(width: 8),
        Text(
          date == null ? '??.??.??' : '${date.day}.${date.month}.${date.year}',
          style: context.textExt.montserratRegular18.copyWith(
            color: context.colorExt.textColor,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDateRow(
          context,
          Text(
            context.tr.from,
            style: context.textExt.montserratRegular18.copyWith(
              color: context.colorExt.textColor,
            ),
          ),
          startDate,
        ),
        _buildDateRow(
          context,
          Text(
            context.tr.to,
            style: context.textExt.montserratRegular18.copyWith(
              color: context.colorExt.textColor,
            ),
          ),
          endDate,
        ),
      ],
    );
  }
}
