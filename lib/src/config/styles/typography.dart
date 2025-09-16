import 'package:flutter/material.dart';

abstract class AppTypography {
  const AppTypography._();

  static const montserrat = 'montserrat';

  static const montserratRegular16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontFamily: montserrat,
    fontSize: 16,
  );

  static const montserratMedium12 = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: montserrat,
    fontSize: 12,
  );

  static const montserratSemiBold16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: montserrat,
    fontSize: 16,
  );

  static const montserratSemiBold20 = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: montserrat,
    fontSize: 20,
  );

  static const montserratSemiBold24 = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: montserrat,
    fontSize: 24,
  );

  static const montserratExtraBold20 = TextStyle(
    fontWeight: FontWeight.w800,
    fontFamily: montserrat,
    fontSize: 20,
  );

  static const montserratExtraBold40 = TextStyle(
    fontWeight: FontWeight.w800,
    fontFamily: montserrat,
    fontSize: 40,
  );
}
