import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/widgets/back_button.dart';
import 'package:tbank/src/common/widgets/base_separator.dart';
import 'package:tbank/src/common/widgets/participant_card.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/presentation/widgets/date_range_view.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/show_qr_dialog.dart';

@RoutePage()
class EventDataPage extends StatelessWidget {
  const EventDataPage({required this.eventEntity, super.key});

  final EventEntity eventEntity;

  @override
  Widget build(BuildContext context) {
    return EventDataView(eventEntity: eventEntity);
  }
}

class EventDataView extends StatelessWidget {
  const EventDataView({required this.eventEntity, super.key});

  final EventEntity eventEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const PrimaryBackButton(),
        title: Text(eventEntity.tripName ?? 'Событие'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsGeometry.all(AppDimensions.defaultPadding),
            child: Column(
              children: [
                // даты
                BaseSeparator(text: context.tr.dates_title),
                DateRangeView(
                  startDate: eventEntity.plannedDate,
                  endDate: eventEntity.exitDate,
                ),
                const SizedBox(height: AppDimensions.editEventPageSpacing),
                // участники
                BaseSeparator(text: context.tr.participants_title),
                Wrap(
                  spacing: AppDimensions.defaultSpacing / 2,
                  runSpacing: AppDimensions.defaultSpacing / 2,
                  children: [
                    const ParticipantCard(
                      imageProvider: NetworkImage(
                        'https://stihi.ru/pics/2022/12/14/8559.jpg',
                      ),
                      name: 'Вячеслав Кравченко',
                      isHost: true,
                    ),
                    ShowQRbutton(eventEntity: eventEntity),
                  ],
                ),
                const SizedBox(height: AppDimensions.editEventPageSpacing),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShowQRbutton extends StatelessWidget {
  const ShowQRbutton({required this.eventEntity, super.key});

  final EventEntity eventEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.participantCardHeight,
      width: AppDimensions.participantCardHeight,
      decoration: BoxDecoration(
        color: context.colorExt.textColor,
        borderRadius: BorderRadius.circular(
          AppDimensions.participantCardBorderRadius,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          showQrDialog(
            context,
            eventEntity.tripId,
            'Присоединиться к ${eventEntity.tripName}',
          );
        },
        child: Icon(Icons.add, color: context.colorExt.primaryBackgroundColor),
      ),
    );
  }
}
