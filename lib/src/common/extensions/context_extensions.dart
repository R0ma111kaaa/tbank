import 'package:flutter/material.dart';
import 'package:tbank/l10n/app_localization.dart';
import 'package:tbank/src/config/styles/extensions/theme_colors.dart';
import 'package:tbank/src/config/styles/extensions/theme_typography.dart';

extension ContextExtensions on BuildContext {
  ThemeColors get colorExt => Theme.of(this).extension<ThemeColors>()!;
  ThemeTypography get textExt => Theme.of(this).extension<ThemeTypography>()!;
  AppLocalizations get tr => AppLocalizations.of(this)!;
}
