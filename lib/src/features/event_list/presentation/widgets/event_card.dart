import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/utils/pluralize_word.dart';
import 'package:tbank/src/common/widgets/fase_text.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class EventCard extends StatelessWidget {
  final String? name;
  final DateTime? startDate;
  final DateTime? endDate;
  final int participants;
  final double spentMoney;
  final double totalMoney;

  const EventCard({
    required this.name,
    required this.startDate,
    required this.endDate,
    required this.participants,
    required this.spentMoney,
    required this.totalMoney,
    super.key,
  });

  String get _formattedDates {
    final formatter = DateFormat('dd.MM.yy');
    if (startDate == null || endDate == null) {
      return '??.??.??-??.??.??';
    }
    return '${formatter.format(startDate!)}-${formatter.format(endDate!)}';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeText(
                    name ?? '',
                    style: context.textExt.montserratSemiBold16,
                  ),
                  const SizedBox(height: AppDimensions.eventCardSeparation),
                  FadeText(
                    _formattedDates,
                    style: context.textExt.montserratLight12,
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppDimensions.defaultPadding),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FadeText(
                  '$participants ${pluralize(participants, context.tr.participants1, context.tr.participants2, context.tr.participants5)}',
                  style: context.textExt.montserratRegular18,
                ),
                const SizedBox(height: AppDimensions.eventCardSeparation),
                FadeText(
                  '${spentMoney.toStringAsFixed(0)} / ${totalMoney.toStringAsFixed(0)} ₽',
                  style: context.textExt.montserratSemiBold12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
