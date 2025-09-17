import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class SmoothTabSwitcher extends StatefulWidget {
  const SmoothTabSwitcher({super.key});

  @override
  State<SmoothTabSwitcher> createState() => _SmoothTabSwitcherState();
}

class _SmoothTabSwitcherState extends State<SmoothTabSwitcher> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.smoothTabSwitcherHeight,
      child: Column(
        children: [
          SizedBox(
            height: 4,
            width: double.infinity,
            child: ColoredBox(color: context.colorExt.primaryColor),
          ),
          Expanded(
            child: Stack(
              children: [
                AnimatedAlign(
                  alignment: _selectedIndex == 0
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
                        onTap: () => setState(() => _selectedIndex = 0),
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
                        onTap: () => setState(() => _selectedIndex = 1),
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
