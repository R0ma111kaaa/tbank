import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tbank/di/di.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/common/widgets/back_button.dart';
import 'package:tbank/src/common/widgets/base_separator.dart';
import 'package:tbank/src/common/widgets/primary_text_field.dart';
import 'package:tbank/src/config/router/router.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/edit_event/presentation/bloc/event_bloc.dart';
import 'package:tbank/src/features/edit_event/presentation/widgets/category_widget.dart';
import 'package:tbank/src/features/edit_event/presentation/widgets/date_picker.dart';
import 'package:tbank/src/features/edit_event/presentation/widgets/show_add_item_dialog.dart';

@RoutePage()
class EditEventPage extends StatelessWidget {
  const EditEventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EventBloc>()..add(const CreateEvent()),
      child: EditEventView(),
    );
  }
}

class EditEventView extends StatelessWidget {
  EditEventView({super.key});

  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final eventBloc = context.read<EventBloc>();
    return Scaffold(
      appBar: AppBar(
        leading: const PrimaryBackButton(),
        title: Text(context.tr.add_event_title),
      ),
      body: SafeArea(
        child: BlocBuilder<EventBloc, EventState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(AppDimensions.defaultPadding),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // название
                          BaseSeparator(text: context.tr.event_title),
                          PrimaryTextField(
                            controller: titleController,
                            onChanged: (value) {
                              eventBloc.add(
                                UpdateTitle(value ?? context.tr.event),
                              );
                            },
                          ),

                          const SizedBox(
                            height: AppDimensions.editEventPageSpacing,
                          ),

                          // даты
                          BaseSeparator(text: context.tr.dates_title),
                          DatePickerWidget(
                            primaryColor: context.colorExt.primaryColor,
                            onPrimaryColor: context.colorExt.textColor,
                            onDatesChanged: (start, end) {
                              eventBloc.add(
                                EventEvent.updateDateTime(start, end),
                              );
                            },
                          ),
                          const SizedBox(
                            height: AppDimensions.editEventPageSpacing,
                          ),

                          // бюджет
                          BaseSeparator(text: context.tr.budget_title),
                          state.maybeMap(
                            editing: (editingState) => ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) =>
                                  CategoryWidget(
                                    categoryName: editingState
                                        .entity
                                        .categories[index]
                                        .categoryName,
                                    totalPlanned: editingState
                                        .entity
                                        .categories[index]
                                        .estimatedExpense,
                                  ),
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(
                                        height:
                                            AppDimensions.defaultSpacing / 2,
                                      ),
                              itemCount: editingState.entity.categories.length,
                            ),
                            orElse: () => const SizedBox.shrink(),
                          ),
                          SizedBox(
                            height: AppDimensions.categoryWidgetHeight,
                            child: Align(
                              child: TextButton(
                                onPressed: () async {
                                  final result = await showAddItemDialog(
                                    context,
                                  );
                                  if (result != null) {
                                    eventBloc.add(AddCategory(result));
                                  }
                                },
                                child: Text(
                                  context.tr.add_category_button_title,
                                  style: context.textExt.montserratRegular18
                                      .copyWith(
                                        color: context.colorExt.textColor,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
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
                          AppDimensions.elevatedButtonMinHeight,
                        ),
                      ),
                    ),
                    onPressed: () {
                      eventBloc.add(const EventEvent.send());
                      context.router.replaceAll([const EventListRoute()]);
                    },
                    child: Text(
                      context.tr.save,
                      style: context.textExt.montserratExtraBold20.copyWith(
                        color: context.colorExt.secondaryBackgroundColor,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
