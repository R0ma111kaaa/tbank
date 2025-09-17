import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/widgets/base_separator.dart';
import 'package:tbank/src/common/widgets/participant_card.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

@RoutePage()
class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EventView();
  }
}

class EventView extends StatelessWidget {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            Container(
              height: AppDimensions.participantCardHeight,
              width: AppDimensions.participantCardHeight,
              decoration: BoxDecoration(
                color: context.colorExt.textColor,
                borderRadius: BorderRadius.circular(
                  AppDimensions.participantCardBorderRadius,
                ),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add,
                  color: context.colorExt.primaryBackgroundColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppDimensions.editEventPageSpacing),
      ],
    );
  }
}
