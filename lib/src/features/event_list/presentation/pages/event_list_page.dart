import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbank/di/di.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/utils/dotenv_util.dart';
import 'package:tbank/src/common/widgets/base_separator.dart';
import 'package:tbank/src/common/widgets/event_card.dart';
import 'package:tbank/src/config/constants/constants.dart';
import 'package:tbank/src/config/router/router.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:tbank/src/features/event_list/presentation/bloc/event_list_bloc.dart';
import 'package:tbank/src/features/event_list/presentation/widgets/smooth_tab_switcher.dart';

@RoutePage()
class EventListPage extends StatelessWidget {
  const EventListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventListBloc(),
      child: const EventListView(),
    );
  }
}

class EventListView extends StatelessWidget {
  const EventListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(AppDimensions.defaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Env.get(EnvConstants.appTitle),
                    style: context.textExt.montserratExtraBold20,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.person,
                      size: AppDimensions.profileIconSize,
                    ),
                    onPressed: () {
                      getIt<AuthRepository>().clearTokens();
                      context.router.replaceAll([const AuthRoute()]);
                    },
                  ),
                ],
              ),
              const SizedBox(height: AppDimensions.defaultSpacing),
              const SmoothTabSwitcher(),
              const SizedBox(height: AppDimensions.defaultSpacing),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.zero, // если не нужны отступы вокруг
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BaseSeparator(text: context.tr.current_events),

                      const SizedBox(height: AppDimensions.defaultSpacing),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) => CardMargin(
                          cardWidget: EventCard(
                            name: 'Выходные',
                            startDate: DateTime.utc(2025, 1, 3),
                            endDate: DateTime.now(),
                            participants: 17,
                            spentMoney: 19860,
                            totalMoney: 12000,
                          ),
                        ),
                      ),

                      const SizedBox(height: AppDimensions.defaultSpacing),
                      BaseSeparator(text: context.tr.past_events),

                      const SizedBox(height: AppDimensions.defaultSpacing),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) => CardMargin(
                          cardWidget: EventCard(
                            name: 'Прошедшее событиеввввввввввв',
                            startDate: DateTime.utc(2024, 12, 20),
                            endDate: DateTime.utc(2024, 12, 21),
                            participants: 10,
                            spentMoney: 5000,
                            totalMoney: 3000,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(
                        AppDimensions.defaultBorderRadius,
                      ),
                    ),
                  ),
                  minimumSize: const WidgetStatePropertyAll(
                    Size(
                      double.infinity,
                      AppDimensions.addEventButtonMinHeight,
                    ),
                  ),
                ),
                onPressed: () {
                  context.router.push(const EditEventRoute());
                },
                child: Text(
                  context.tr.add_event_button_text,
                  style: context.textExt.montserratExtraBold20.copyWith(
                    color: context.colorExt.secondaryBackgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget eventLIstSeparatorBuilder(BuildContext context, int index) =>
      const SizedBox(height: AppDimensions.defaultPadding);
}

class CardMargin extends StatelessWidget {
  final Widget cardWidget;

  const CardMargin({required this.cardWidget, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.defaultPadding,
        vertical: AppDimensions.defaultPadding / 2,
      ),
      child: cardWidget,
    );
  }
}
