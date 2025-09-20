import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/edit_event/domain/entities/category/category_entity.dart';

Future<CategoryEntity?> showAddItemDialog(BuildContext context) {
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final focusName = FocusNode();
  final focusPrice = FocusNode();

  return showDialog<CategoryEntity?>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Dialog(
        backgroundColor: context.colorExt.secondaryBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppDimensions.defaultBorderRadius,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.defaultPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                focusNode: focusName,
                decoration: InputDecoration(
                  labelStyle: context.textExt.montserratMedium14.copyWith(
                    color: context.colorExt.textColor,
                  ),
                  labelText: context.tr.category_title_text,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: context.colorExt.textColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: context.colorExt.textColor),
                  ),
                ),
                textInputAction: TextInputAction.next,
                onSubmitted: (_) {
                  FocusScope.of(context).requestFocus(focusPrice);
                },
              ),
              const SizedBox(height: AppDimensions.defaultSpacing),
              TextField(
                controller: priceController,
                focusNode: focusPrice,
                decoration: InputDecoration(
                  labelStyle: context.textExt.montserratMedium14.copyWith(
                    color: context.colorExt.textColor,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: context.colorExt.textColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: context.colorExt.textColor),
                  ),
                  labelText: context.tr.budget_title_text,
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) {
                  Navigator.of(context).pop(
                    CategoryEntity(
                      categoryName: nameController.text.trim(),
                      estimatedExpense:
                          double.tryParse(priceController.text) ?? 0,
                    ),
                  );
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      context.tr.cancel,
                      style: context.textExt.montserratRegular16.copyWith(
                        color: context.colorExt.textColor,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(
                        CategoryEntity(
                          categoryName: nameController.text.trim(),
                          estimatedExpense:
                              double.tryParse(priceController.text) ?? 0,
                        ),
                      );
                    },
                    child: Text(
                      context.tr.save,
                      style: context.textExt.montserratRegular16.copyWith(
                        color: context.colorExt.textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
