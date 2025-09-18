import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tbank/src/common/extensions/context_extensions.dart';
import 'package:tbank/src/config/styles/dimensions.dart';

class PrimaryDoubleField extends StatelessWidget {
  const PrimaryDoubleField({this.controller, super.key, this.onChanged});

  final TextEditingController? controller;
  final ValueChanged<double>? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.textFieldHeight,
      child: TextField(
        controller: controller,
        cursorColor: context.colorExt.textColor,
        cursorHeight: AppDimensions.textFieldCursorHeight,
        style: context.textExt.montserratMedium14,
        keyboardType: const TextInputType.numberWithOptions(
          decimal: true, // разрешаем точку
          signed: false,
        ),
        inputFormatters: [
          FilteringTextInputFormatter.allow(
            RegExp(r'^\d*\.?\d*'), // разрешаем только числа и точку
          ),
        ],
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
        onChanged: (value) {
          final parsed = double.tryParse(value);
          onChanged?.call(parsed ?? 0.0); // если пусто или некорректно → 0
        },
      ),
    );
  }
}
