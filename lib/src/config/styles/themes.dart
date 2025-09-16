import 'package:flutter/material.dart';
import 'package:tbank/src/config/styles/colors.dart';
import 'package:tbank/src/config/styles/extensions/theme_colors.dart';
import 'package:tbank/src/config/styles/extensions/theme_typography.dart';
import 'package:tbank/src/config/styles/typography.dart';

abstract class AppThemes {
  const AppThemes._();

  static final light = ThemeData(
    extensions: [const ThemeColors.light(), ThemeTypography.light()],
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteTBank,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: AppTypography.montserratExtraBold20.copyWith(
        color: AppColors.blackTBank,
      ),
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.whiteTBank,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppTypography.montserratSemiBold16.copyWith(
        color: AppColors.yellowTBank,
      ),
      activeIndicatorBorder: BorderSide.none,
    ),
  );
}
