import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class SmoothTabSwitcher extends StatelessWidget {
  final VoidCallback onTap;
  final int selectedIndex;
  final String firstTabTitle;
  final String secondTabTitle;

  const SmoothTabSwitcher({
    required this.onTap,
    required this.selectedIndex,
    this.firstTabTitle = 'Я создатель',
    this.secondTabTitle = 'Я участник',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.smoothTabSwitcherHeight,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                AnimatedAlign(
                  alignment: selectedIndex == 0
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceInOut,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 1,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      decoration: BoxDecoration(
                        color: context.colorExt.primaryColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(
                            AppDimensions.defaultBorderRadius,
                          ),
                          bottomRight: Radius.circular(
                            AppDimensions.defaultBorderRadius,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: onTap,
                        child: Center(
                          child: Text(
                            firstTabTitle,
                            style: context.textExt.montserratMedium14.copyWith(
                              color: context.colorExt.textColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: onTap,
                        child: Center(
                          child: Text(
                            secondTabTitle,
                            style: context.textExt.montserratMedium14.copyWith(
                              color: context.colorExt.textColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
