import 'package:flutter/material.dart';
import 'package:tbank/src/config/styles/typography.dart';

@immutable
class ThemeTypography extends ThemeExtension<ThemeTypography> {
  const ThemeTypography._({
    required this.montserratRegular16,
    required this.montserratMedium12,
    required this.montserratSemiBold16,
    required this.montserratSemiBold20,
    required this.montserratSemiBold24,
    required this.montserratSemiBold40,
    required this.montserratExtraBold20,
  });

  ThemeTypography.light([Color color = Colors.black])
    : montserratRegular16 = AppTypography.montserratRegular16.copyWith(
        color: color,
      ),
      montserratMedium12 = AppTypography.montserratMedium12.copyWith(
        color: color,
      ),
      montserratSemiBold16 = AppTypography.montserratSemiBold16.copyWith(
        color: color,
      ),
      montserratSemiBold20 = AppTypography.montserratSemiBold20.copyWith(
        color: color,
      ),
      montserratSemiBold24 = AppTypography.montserratSemiBold24.copyWith(
        color: color,
      ),
      montserratExtraBold20 = AppTypography.montserratExtraBold20.copyWith(
        color: color,
      ),
      montserratSemiBold40 = AppTypography.montserratExtraBold40.copyWith(
        color: color,
      );

  final TextStyle montserratRegular16;
  final TextStyle montserratMedium12;
  final TextStyle montserratSemiBold16;
  final TextStyle montserratSemiBold20;
  final TextStyle montserratSemiBold24;
  final TextStyle montserratSemiBold40;
  final TextStyle montserratExtraBold20;

  @override
  ThemeExtension<ThemeTypography> lerp(
    ThemeExtension<ThemeTypography>? other,
    double t,
  ) {
    if (other is! ThemeTypography) {
      return this;
    }

    return ThemeTypography._(
      montserratRegular16: TextStyle.lerp(
        montserratRegular16,
        other.montserratRegular16,
        t,
      )!,
      montserratMedium12: TextStyle.lerp(
        montserratMedium12,
        other.montserratMedium12,
        t,
      )!,
      montserratSemiBold16: TextStyle.lerp(
        montserratSemiBold16,
        other.montserratSemiBold16,
        t,
      )!,
      montserratSemiBold20: TextStyle.lerp(
        montserratSemiBold20,
        other.montserratSemiBold20,
        t,
      )!,
      montserratSemiBold24: TextStyle.lerp(
        montserratSemiBold24,
        other.montserratSemiBold24,
        t,
      )!,
      montserratSemiBold40: TextStyle.lerp(
        montserratSemiBold40,
        other.montserratSemiBold40,
        t,
      )!,
      montserratExtraBold20: TextStyle.lerp(
        montserratExtraBold20,
        other.montserratExtraBold20,
        t,
      )!,
    );
  }

  static ThemeTypography of(BuildContext context) {
    return Theme.of(context).extension<ThemeTypography>()!;
  }

  @override
  ThemeExtension<ThemeTypography> copyWith({
    TextStyle? montserratRegular16,
    TextStyle? montserratMedium12,
    TextStyle? montserratSemiBold16,
    TextStyle? montserratSemiBold20,
    TextStyle? montserratSemiBold24,
    TextStyle? montserratSemiBold40,
    TextStyle? montserratExtraBold20,
  }) {
    return ThemeTypography._(
      montserratRegular16: montserratRegular16 ?? this.montserratRegular16,
      montserratMedium12: montserratMedium12 ?? this.montserratMedium12,
      montserratSemiBold16: montserratSemiBold16 ?? this.montserratSemiBold16,
      montserratSemiBold20: montserratSemiBold20 ?? this.montserratSemiBold20,
      montserratSemiBold24: montserratSemiBold24 ?? this.montserratSemiBold24,
      montserratSemiBold40: montserratSemiBold40 ?? this.montserratSemiBold40,
      montserratExtraBold20:
          montserratExtraBold20 ?? this.montserratExtraBold20,
    );
  }
}
