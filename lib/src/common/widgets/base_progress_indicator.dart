import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class BaseProgressIndicator extends StatelessWidget {
  const BaseProgressIndicator({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(color: context.colorExt.primaryColor),
          const SizedBox(height: AppDimensions.defaultPadding),
          if (text != null)
            Text(text!, style: context.textExt.montserratSemiBold16),
        ],
      ),
    );
  }
}
