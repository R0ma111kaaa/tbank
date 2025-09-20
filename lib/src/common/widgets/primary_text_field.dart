import 'package:flutter/material.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({this.controller, super.key, this.onChanged});

  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.textFieldHeight,
      child: TextField(
        controller: controller,
        cursorColor: context.colorExt.textColor,
        cursorHeight: AppDimensions.textFieldCursorHeight,
        style: context.textExt.montserratMedium14,
        decoration: InputDecoration(
          filled: true,
          fillColor: context.colorExt.secondaryBackgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppDimensions.textFieldBorderRadius,
            ),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.defaultPadding,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
