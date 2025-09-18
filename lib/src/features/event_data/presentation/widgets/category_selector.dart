import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';
import 'package:tbank/src/features/edit_event/domain/entities/category_response_entity/category_response_entity.dart';

class MiniCategoryWidget extends StatelessWidget {
  const MiniCategoryWidget({
    required this.name,
    this.isSelected = false,
    super.key,
  });

  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.participantCardHorisontalSpacing,
      ),
      height: AppDimensions.participantCardHeight,
      decoration: BoxDecoration(
        color: isSelected
            ? context.colorExt.primaryColor
            : context.colorExt.secondaryBackgroundColor,
        borderRadius: BorderRadius.circular(
          AppDimensions.participantCardBorderRadius,
        ),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          name,
          style: context.textExt.montserratMedium12.copyWith(
            color: context.colorExt.textColor,
          ),
        ),
      ),
    );
  }
}

class SingleCategorySelector extends StatefulWidget {
  const SingleCategorySelector({
    required this.categories,
    this.initialSelectedCategory,
    this.onCategorySelected,
    super.key,
  });

  final List<CategoryResponseEntity> categories;
  final CategoryResponseEntity? initialSelectedCategory;
  final void Function(CategoryResponseEntity)? onCategorySelected;

  @override
  State<SingleCategorySelector> createState() => _SingleCategorySelectorState();
}

class _SingleCategorySelectorState extends State<SingleCategorySelector> {
  CategoryResponseEntity? selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = widget.initialSelectedCategory;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.categories.map((category) {
        final isSelected = selectedCategory?.categoryId == category.categoryId;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedCategory = category;
            });
            if (widget.onCategorySelected != null) {
              widget.onCategorySelected!(category);
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: MiniCategoryWidget(
              name: category.categoryName,
              isSelected: isSelected,
            ),
          ),
        );
      }).toList(),
    );
  }
}
