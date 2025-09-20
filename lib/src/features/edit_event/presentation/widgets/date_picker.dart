import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';

class DatePickerWidget extends StatefulWidget {
  final Color primaryColor;
  final Color onPrimaryColor;
  final void Function(DateTime start, DateTime end)? onDatesChanged;

  const DatePickerWidget({
    required this.primaryColor,
    required this.onPrimaryColor,
    required this.onDatesChanged,
    super.key,
  });

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  late final ValueNotifier<DateTime> startDate;
  late final ValueNotifier<DateTime> endDate;

  @override
  void initState() {
    super.initState();
    startDate = ValueNotifier(DateTime.now());
    endDate = ValueNotifier(DateTime.now());
  }

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
              primary: widget.primaryColor,
              onPrimary: widget.onPrimaryColor,
              onSurface: widget.onPrimaryColor,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: widget.onPrimaryColor,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      notifier.value = picked;
      widget.onDatesChanged?.call(startDate.value, endDate.value);
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
