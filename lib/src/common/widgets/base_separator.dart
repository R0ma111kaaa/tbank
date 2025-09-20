import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class BaseSeparator extends StatelessWidget {
  const BaseSeparator({super.key, this.text, this.color});

  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (text != null)
          Text(
            text!,
            style: context.textExt.montserratMedium14.copyWith(
              color: color ?? context.colorExt.textColor,
            ),
          ),
        Divider(
          height: 0,
          thickness: 0,
          color: color ?? context.colorExt.textColor,
        ),
        const SizedBox(height: AppDimensions.defaultPadding / 2),
      ],
    );
  }
}
