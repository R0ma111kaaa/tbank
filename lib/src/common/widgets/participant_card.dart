import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class ParticipantCard extends StatelessWidget {
  const ParticipantCard({
    required this.name,
    required this.imageProvider,
    this.isHost = false,
    super.key,
  });

  final String name;
  final ImageProvider imageProvider;
  final bool isHost;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.participantCardHeight,
      decoration: BoxDecoration(
        color: isHost
            ? context.colorExt.primaryColor
            : context.colorExt.secondaryBackgroundColor,
        borderRadius: BorderRadius.circular(
          AppDimensions.participantCardBorderRadius,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: AppDimensions.participantCardHorisontalSpacing),
          CircleAvatar(
            backgroundImage: imageProvider,
            radius: AppDimensions.participantCardAvatarRadius,
          ),
          const SizedBox(width: AppDimensions.participantCardHorisontalSpacing),
          Text(
            name,
            style: context.textExt.montserratMedium12.copyWith(
              color: context.colorExt.textColor,
            ),
          ),
          const SizedBox(width: AppDimensions.defaultSpacing),
        ],
      ),
    );
  }
}
