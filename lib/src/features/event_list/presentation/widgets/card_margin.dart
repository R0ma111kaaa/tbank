import 'package:flutter/material.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

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
