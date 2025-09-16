import 'package:flutter/material.dart';
import 'package:tbank/src/config/styles/colors.dart';

@immutable
class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors._({
    required this.textColor,
    required this.primaryColor,
    required this.primaryBackgroundColor,
    required this.secondaryBackgroundColor,
    required this.errorColor,
  });

  /// Светлая тема под TBank цвета
  const ThemeColors.light()
    : textColor = AppColors.blackTBank,
      primaryColor = AppColors.yellowTBank,
      primaryBackgroundColor = AppColors.whiteTBank,
      secondaryBackgroundColor = AppColors.greyTBank,
      errorColor = Colors.red;

  final Color textColor;
  final Color primaryColor;
  final Color primaryBackgroundColor;
  final Color secondaryBackgroundColor;
  final Color errorColor;

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? textColor,
    Color? primaryColor,
    Color? primaryBackgroundColor,
    Color? secondaryBackgroundColor,
    Color? errorColor,
  }) {
    return ThemeColors._(
      textColor: textColor ?? this.textColor,
      primaryColor: primaryColor ?? this.primaryColor,
      primaryBackgroundColor:
          primaryBackgroundColor ?? this.primaryBackgroundColor,
      secondaryBackgroundColor:
          secondaryBackgroundColor ?? this.secondaryBackgroundColor,
      errorColor: errorColor ?? this.errorColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors._(
      textColor: Color.lerp(textColor, other.textColor, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      primaryBackgroundColor: Color.lerp(
        primaryBackgroundColor,
        other.primaryBackgroundColor,
        t,
      )!,
      secondaryBackgroundColor: Color.lerp(
        secondaryBackgroundColor,
        other.secondaryBackgroundColor,
        t,
      )!,
      errorColor: Color.lerp(errorColor, other.errorColor, t)!,
    );
  }

  static ThemeColors of(BuildContext context) =>
      Theme.of(context).extension<ThemeColors>()!;
}
