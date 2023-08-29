import 'package:flutter/material.dart';

TextTheme terreDeFanghText() {
  final TextTheme base = ThemeData().textTheme;
  return base.copyWith(
    displayLarge: base.displayLarge!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 51.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -8.0,
    ),
    displayMedium: base.displayMedium!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 38.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -4.5,
    ),
    displaySmall: base.displaySmall!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 29.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -2.5,
    ),
    headlineLarge: base.headlineLarge!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 24.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.1,
    ),
    headlineMedium: base.headlineMedium!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 22.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.2,
    ),
    headlineSmall: base.headlineSmall!.copyWith(
      fontFamily: 'lithogrb',
      fontSize: 18.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.8,
    ),
    titleLarge: base.titleLarge!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 21.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.4,
    ),
    titleMedium: base.titleMedium!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 16.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.0,
    ),
    titleSmall: base.titleSmall!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 14.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.0,
    ),
    labelLarge: base.labelLarge!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 14.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.0,
    ),
    labelMedium: base.labelMedium!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 12.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.4,
    ),
    labelSmall: base.labelSmall!.copyWith(
      fontFamily: 'benguiab',
      fontSize: 11.0,
      height: 1.25,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.4,
    ),
    bodyLarge: base.bodyLarge!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 17.0,
      height: 1.25,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.5,
    ),
    bodyMedium: base.bodyMedium!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 15.0,
      height: 1.25,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.2,
    ),
    bodySmall: base.bodySmall!.copyWith(
      fontFamily: 'dauphinn',
      fontSize: 13.0,
      height: 1.25,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.2,
    ),
  );
}
