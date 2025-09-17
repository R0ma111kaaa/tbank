import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';

class DatePickerWidget extends StatelessWidget {
  final Color primaryColor;
  final Color onPrimaryColor;
  final void Function(DateTime start, DateTime end)? onDatesChanged;

  final ValueNotifier<DateTime> startDate = ValueNotifier(DateTime.now());
  final ValueNotifier<DateTime> endDate = ValueNotifier(DateTime.now());

  DatePickerWidget({
    required this.primaryColor,
    required this.onPrimaryColor,
    required this.onDatesChanged,
    super.key,
  });

  Future<void> _pickDate(
    BuildContext context,
    ValueNotifier<DateTime> notifier,
  ) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: notifier.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryColor, // цвет выделения даты
              onPrimary: onPrimaryColor, // цвет текста на выделенной дате
              onSurface: onPrimaryColor, // цвет текста на календаре
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: onPrimaryColor),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      notifier.value = picked;
      // вызываем колбэк с обеими датами
      if (onDatesChanged != null) {
        onDatesChanged!(startDate.value, endDate.value);
      }
    }
  }

  Widget _buildDateRow(
    BuildContext context,
    Widget labelWidget,
    ValueNotifier<DateTime> notifier,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        labelWidget,
        const SizedBox(width: 8),
        ValueListenableBuilder<DateTime>(
          valueListenable: notifier,
          builder: (context, value, _) => GestureDetector(
            onTap: () => _pickDate(context, notifier),
            child: Text(
              '${value.day}.${value.month}.${value.year}',
              style: context.textExt.montserratRegular18.copyWith(
                color: context.colorExt.textColor,
                decoration: TextDecoration.underline,
              ),
            ),
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
