import 'package:tbank/src/config/styles/scales.dart';

abstract class AppDimensions {
  AppDimensions._();

  static const eventCardSeparation = AppSpacing.space1;

  static const categoryWidgetHeight = AppSpacing.space8;
  static const categoryWidgetBorderRadius = AppSpacing.space4;

  static const textFieldHeight = AppSpacing.space8;
  static const textFieldBorderRadius = AppSpacing.space4;
  static const textFieldCursorHeight = AppSpacing.space4;

  static const elevatedButtonMinHeight = AppSpacing.space9;

  static const participantCardAvatarRadius = 20.0;
  static const participantCardHeight = AppSpacing.space8;
  static const participantCardBorderRadius = AppSpacing.space6;
  static const participantCardHorisontalSpacing = AppSpacing.space1;

  static const smoothTabSwitcherHeight = AppSpacing.space8;

  static const profileIconSize = AppSpacing.space7;

  static const editEventPageSpacing = AppSpacing.space7;

  static const defaultBorderRadius = AppSpacing.space3;
  static const defaultPadding = AppSpacing.space3;
  static const defaultSpacing = AppSpacing.space3;
}
