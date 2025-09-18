import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbank/di/di.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/widgets/back_button.dart';
import 'package:tbank/src/common/widgets/base_progress_indicator.dart';
import 'package:tbank/src/common/widgets/base_separator.dart';
import 'package:tbank/src/common/widgets/participant_card.dart';
import 'package:tbank/src/common/widgets/primary_text_field.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/edit_event/domain/entities/event/event_entity.dart';
import 'package:tbank/src/features/edit_event/presentation/pages/edit_event_page.dart';
import 'package:tbank/src/features/edit_event/presentation/widgets/category_widget.dart';
import 'package:tbank/src/features/edit_event/presentation/widgets/date_range_view.dart';
import 'package:tbank/src/features/event_data/presentation/bloc/event_data_bloc.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/category_selector.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/participant_selector.dart';
import 'package:tbank/src/features/event_data/presentation/widgets/show_qr_dialog.dart';
import 'package:tbank/src/features/event_list/presentation/widgets/smooth_tab_switcher.dart';

@RoutePage()
class EventDataPage extends StatelessWidget {
  const EventDataPage({required this.eventEntity, super.key});

  final EventEntity eventEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<EventDataBloc>()..add(EventDataEvent.loadData(eventEntity)),
      child: EventDataView(eventEntity: eventEntity),
    );
  }
}

class EventDataView extends StatelessWidget {
  const EventDataView({required this.eventEntity, super.key});

  final EventEntity eventEntity;

  @override
  Widget build(BuildContext context) {
    final eventDatabloc = context.read<EventDataBloc>();
    return Scaffold(
      appBar: AppBar(
        leading: const PrimaryBackButton(),
        title: Text(eventEntity.tripName ?? 'Событие'),
      ),
      body: SafeArea(
        child: BlocBuilder<EventDataBloc, EventDataState>(
          builder: (context, state) {
            return state.maybeMap(
              loaded: (loadedState) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsetsGeometry.all(
                      AppDimensions.defaultPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // даты
                        BaseSeparator(text: context.tr.dates_title),
                        DateRangeView(
                          startDate: eventEntity.plannedDate,
                          endDate: eventEntity.exitDate,
                        ),
                        const SizedBox(
                          height: AppDimensions.editEventPageSpacing,
                        ),
                        // участники
                        BaseSeparator(text: context.tr.participants_title),
                        Wrap(
                          spacing: AppDimensions.defaultSpacing / 2,
                          runSpacing: AppDimensions.defaultSpacing / 2,
                          children: loadedState.participants
                              .map(
                                (e) => ParticipantCard(
                                  name:
                                      '${e.yandexJson.firstName} ${e.yandexJson.lastName}',
                                  imageProvider: NetworkImage(
                                    e.yandexJson.picture,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(
                          height: AppDimensions.editEventPageSpacing,
                        ),
                        const BaseSeparator(text: 'Категории'),
                        if (loadedState.categories.isNotEmpty)
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final category = loadedState.categories[index];
                              return CategoryWidget(
                                categoryName: category.categoryName,
                                totalPlanned: category.totalPlanned,
                                totalSpent: category.totalSpent,
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  height: AppDimensions.defaultSpacing / 2,
                                ),
                            itemCount: loadedState.categories.length,
                          ),
                        if (loadedState.categories.isEmpty)
                          SizedBox(
                            height: context.mq.size.height * 0.6,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/money.png'),
                                  SizedBox(height: 12),
                                  Text(
                                    'Здесь будут категории события',
                                    style: context.textExt.montserratRegular18
                                        .copyWith(
                                          color: context.colorExt.textColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
              addingExpence: (loadedState) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsetsGeometry.all(
                      AppDimensions.defaultPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // даты
                        BaseSeparator(text: context.tr.dates_title),
                        DateRangeView(
                          startDate: eventEntity.plannedDate,
                          endDate: eventEntity.exitDate,
                        ),
                        const SizedBox(
                          height: AppDimensions.editEventPageSpacing,
                        ),
                        // участники
                        BaseSeparator(text: context.tr.participants_title),
                        Wrap(
                          spacing: AppDimensions.defaultSpacing / 2,
                          runSpacing: AppDimensions.defaultSpacing / 2,
                          children: loadedState.participants
                              .map(
                                (e) => ParticipantCard(
                                  name:
                                      '${e.yandexJson.firstName} ${e.yandexJson.lastName}',
                                  imageProvider: NetworkImage(
                                    e.yandexJson.picture,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(
                          height: AppDimensions.editEventPageSpacing,
                        ),
                        const BaseSeparator(text: 'Категории'),
                        if (loadedState.categories.isNotEmpty)
                          ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final category = loadedState.categories[index];
                              return CategoryWidget(
                                categoryName: category.categoryName,
                                totalPlanned: category.totalPlanned,
                                totalSpent: category.totalSpent,
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  height: AppDimensions.defaultSpacing / 2,
                                ),
                            itemCount: loadedState.categories.length,
                          ),
                        if (loadedState.categories.isEmpty)
                          SizedBox(
                            height: context.mq.size.height * 0.6,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/money.png'),
                                  SizedBox(height: 12),
                                  Text(
                                    'Здесь будут категории события',
                                    style: context.textExt.montserratRegular18
                                        .copyWith(
                                          color: context.colorExt.textColor,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
              orElse: () {
                return const PrimaryProgressIndicator(text: 'Грузим событие');
              },
            );
          },
        ),
      ),
      floatingActionButton: BlocBuilder<EventDataBloc, EventDataState>(
        builder: (context, state) {
          return state.maybeMap(
            loaded: (loaded) {
              return SizedBox(
                width: 60, // ширина
                height: 60,
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100), // супер круглый
                  ),
                  backgroundColor: context.colorExt.textColor,
                  mini: false,
                  child: Image.asset('assets/images/add_expense.png'),
                  onPressed: () async {
                    eventDatabloc.add(
                      const EventDataEvent.startAddingExpense(),
                    );
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: context.mq.size.height * 0.9,
                          child: BlocProvider.value(
                            value: eventDatabloc,
                            child: BlocBuilder<EventDataBloc, EventDataState>(
                              builder: (context, state) {
                                return state.maybeMap(
                                  addingExpence: (addingExpenseState) {
                                    return Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Новая трата',
                                                  style: context
                                                      .textExt
                                                      .montserratExtraBold20
                                                      .copyWith(
                                                        color: context
                                                            .colorExt
                                                            .textColor,
                                                        fontSize: 24,
                                                      ),
                                                ),
                                                const SizedBox(height: 16),
                                                const BaseSeparator(
                                                  text: 'Название',
                                                ),
                                                PrimaryTextField(
                                                  onChanged: (newTitle) {
                                                    eventDatabloc.add(
                                                      EventDataEvent.updateExpense(
                                                        addingExpenseState
                                                            .newExpenseEntity
                                                            .copyWith(
                                                              title: newTitle,
                                                            ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                                const SizedBox(
                                                  height: AppDimensions
                                                      .defaultSpacing,
                                                ),
                                                const BaseSeparator(
                                                  text: 'Категория',
                                                ),
                                                SingleCategorySelector(
                                                  categories: addingExpenseState
                                                      .categories,
                                                  onCategorySelected: (selected) {
                                                    eventDatabloc.add(
                                                      EventDataEvent.updateExpense(
                                                        addingExpenseState
                                                            .newExpenseEntity
                                                            .copyWith(
                                                              entity: selected,
                                                            ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                                SizedBox(height: 12),
                                                const BaseSeparator(
                                                  text: 'Оплата',
                                                ),
                                                SmoothTabSwitcher(
                                                  selectedIndex:
                                                      addingExpenseState
                                                          .selectedTypeIndex,
                                                  firstTabTitle: 'Поровну',
                                                  secondTabTitle: 'По частям',
                                                  onTap: () {
                                                    eventDatabloc.add(
                                                      const EventDataEvent.changeType(),
                                                    );
                                                  },
                                                ),
                                                SizedBox(height: 12),
                                                if (addingExpenseState
                                                        .selectedTypeIndex ==
                                                    0)
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                          20,
                                                        ),
                                                    decoration: BoxDecoration(
                                                      color: context
                                                          .colorExt
                                                          .textColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            16,
                                                          ),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        BaseSeparator(
                                                          text: 'Кто тратил',
                                                          color: context
                                                              .colorExt
                                                              .primaryBackgroundColor,
                                                        ),
                                                        ParticipantSelector(
                                                          participants:
                                                              addingExpenseState
                                                                  .participants,
                                                          isMultiSelect: true,
                                                          onSelectionChanged: (selected) {
                                                            eventDatabloc.add(
                                                              EventDataEvent.updateExpense(
                                                                addingExpenseState
                                                                    .newExpenseEntity
                                                                    .copyWith(
                                                                      userCount:
                                                                          selected
                                                                              .length,
                                                                    ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                        SizedBox(height: 12),
                                                        BaseSeparator(
                                                          text:
                                                              'По сколько тратили',
                                                          color: context
                                                              .colorExt
                                                              .primaryBackgroundColor,
                                                        ),
                                                        PrimaryTextField(),
                                                      ],
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),

                                          ElevatedButton(
                                            style: ButtonStyle(
                                              shape: WidgetStatePropertyAll(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusGeometry.circular(
                                                        AppDimensions
                                                            .defaultBorderRadius,
                                                      ),
                                                ),
                                              ),
                                              minimumSize:
                                                  const WidgetStatePropertyAll(
                                                    Size(
                                                      double.infinity,
                                                      AppDimensions
                                                          .elevatedButtonMinHeight,
                                                    ),
                                                  ),
                                            ),
                                            onPressed: () {
                                              eventDatabloc.add(
                                                const EventDataEvent.sendExpense(),
                                              );
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              context.tr.save,
                                              style: context
                                                  .textExt
                                                  .montserratExtraBold20
                                                  .copyWith(
                                                    color: context
                                                        .colorExt
                                                        .secondaryBackgroundColor,
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                        ],
                                      ),
                                    );
                                  },
                                  orElse: () => const SizedBox.shrink(),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    );
                    eventDatabloc.add(EventDataEvent.loadData(eventEntity));
                  },
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
