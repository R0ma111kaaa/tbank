import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/show_qr_dialog.dart';

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
