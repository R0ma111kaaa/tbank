import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbank/di/di.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/utils/dotenv_util.dart';
import 'package:tbank/src/common/widgets/base_progress_indicator.dart';
import 'package:tbank/src/common/widgets/base_separator.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/event_list/presentation/widgets/card_margin.dart';
import 'package:tbank/src/features/event_list/presentation/widgets/event_card.dart';
import 'package:tbank/src/config/constants/constants.dart';
import 'package:tbank/src/config/router/router.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/event_list/presentation/bloc/event_list_bloc.dart';
import 'package:tbank/src/features/event_list/presentation/widgets/qu_code_scanner.dart';
import 'package:tbank/src/features/event_list/presentation/widgets/smooth_tab_switcher.dart';

@RoutePage()
class EventListPage extends StatelessWidget {
  const EventListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<EventListBloc>()..add(const EventListEvent.loadData()),
      child: const EventListView(),
    );
  }
}

class EventListView extends StatelessWidget {
  const EventListView({super.key});

  @override
  Widget build(BuildContext context) {
    final eventListBloc = context.read<EventListBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Env.get(EnvConstants.appTitle),
          style: context.textExt.montserratExtraBold20.copyWith(
            color: context.colorExt.primaryBackgroundColor,
          ),
        ),
        actions: [
          QRScanButton(
            onScan: (eventId) {
              eventListBloc.add(EventListEvent.joinEvent(eventId));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Запрос на вступление отправлен")),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<EventListBloc, EventListState>(
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsetsGeometry.symmetric(
                horizontal: AppDimensions.defaultPadding,
              ),
              child: Column(
                children: [
                  SmoothTabSwitcher(
                    selectedIndex: state.maybeMap(
                      loaded: (value) => value.menuIndex,
                      orElse: () => 0,
                    ),
                    onTap: () => eventListBloc.add(
                      const EventListEvent.changeMenuIndex(),
                    ),
                  ),
                  const SizedBox(height: AppDimensions.defaultSpacing),
                  Expanded(
                    child: state.maybeMap(
                      loading: (loadingState) {
                        return PrimaryProgressIndicator(
                          text: context.tr.load_event_list_title,
                        );
                      },
                      loaded: (loadedState) {
                        final eventListsObject = loadedState.menuIndex == 0
                            ? loadedState.ownedEvents
                            : loadedState.participantingEvents;
                        final upcomingEvents = eventListsObject['upcoming']!;
                        final currentEvents = eventListsObject['current']!;
                        final pastEvents = eventListsObject['past']!;
                        return RefreshIndicator(
                          color: context.colorExt.primaryColor,
                          onRefresh: () async {
                            eventListBloc.add(const EventListEvent.loadData());
                            return Future.value();
                          },
                          child:
                              upcomingEvents.isNotEmpty ||
                                  currentEvents.isNotEmpty ||
                                  pastEvents.isNotEmpty
                              ? ListView(
                                  padding: EdgeInsets.zero,
                                  children: [
                                    if (upcomingEvents.isNotEmpty)
                                      BaseSeparator(
                                        text: context.tr.upcoming_events,
                                      ),
                                    EventListViewBuilder(
                                      events: upcomingEvents,
                                    ),
                                    const SizedBox(
                                      height: AppDimensions.defaultSpacing,
                                    ),
                                    if (currentEvents.isNotEmpty)
                                      BaseSeparator(
                                        text: context.tr.current_events,
                                      ),
                                    EventListViewBuilder(events: currentEvents),
                                    const SizedBox(
                                      height: AppDimensions.defaultSpacing,
                                    ),
                                    if (pastEvents.isNotEmpty)
                                      BaseSeparator(
                                        text: context.tr.past_events,
                                      ),
                                    EventListViewBuilder(events: pastEvents),
                                    EventListViewBuilder(events: currentEvents),
                                    const SizedBox(
                                      height: AppDimensions.defaultSpacing,
                                    ),
                                  ],
                                )
                              : SingleChildScrollView(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  child: SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.7,
                                    child: Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Image.asset(
                                            'assets/images/chemodan.png',
                                          ),
                                          const SizedBox(
                                            height:
                                                AppDimensions.defaultSpacing,
                                          ),
                                          Text(
                                            'Здесь будут ваши поездки',
                                            style: context
                                                .textExt
                                                .montserratRegular18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                        );
                      },
                      orElse: () {
                        return const SizedBox.shrink();
                      },
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
                          AppDimensions.elevatedButtonMinHeight,
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
                  const SizedBox(height: AppDimensions.defaultSpacing),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class EventListViewBuilder extends StatelessWidget {
  const EventListViewBuilder({required this.events, super.key});

  final List<EventEntity> events;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return CardMargin(
          cardWidget: GestureDetector(
            onTap: () =>
                context.router.push(EventDataRoute(eventEntity: event)),
            child: EventCard(
              name: event.tripName,
              startDate: event.plannedDate,
              endDate: event.exitDate,
              participants: event.participantCount,
              spentMoney: event.totalSpent,
              totalMoney: event.totalPlanned,
            ),
          ),
        );
      },
    );
  }
}
