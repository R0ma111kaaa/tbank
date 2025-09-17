import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class SmoothTabSwitcher extends StatelessWidget {
  final VoidCallback onTap;
  final int selectedIndex;

  const SmoothTabSwitcher({
    required this.onTap,
    super.key,
    required this.selectedIndex,
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
                        onTap: () => onTap,
                        child: Center(
                          child: Text(
                            'Я создатель',
                            style: context.textExt.montserratMedium14.copyWith(
                              color: context.colorExt.textColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => onTap,
                        child: Center(
                          child: Text(
                            'Я участник',
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
