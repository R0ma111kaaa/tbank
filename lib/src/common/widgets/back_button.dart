import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';

class PrimaryBackButton extends StatelessWidget {
  const PrimaryBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.router.pop();
      },
      icon: Icon(
        Icons.arrow_back,
        color: context.colorExt.primaryBackgroundColor,
      ),
    );
  }
}
