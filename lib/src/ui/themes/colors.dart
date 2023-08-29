import 'package:flutter/material.dart';

HSLColor primaryColor(double tone) => HSLColor.fromAHSL(1.0, 12.0, 0.25, tone);
HSLColor secondaryColor(double tone) => HSLColor.fromAHSL(1.0, 342.0, 0.25, tone);
HSLColor tertiaryColor(double tone) => HSLColor.fromAHSL(1.0, 132.0, 0.25, tone);

HSLColor primaryDarkColor(double tone) => HSLColor.fromAHSL(1.0, 192.0, 0.33, tone);
HSLColor secondaryDarkColor(double tone) => HSLColor.fromAHSL(1.0, 163.0, 0.33, tone);
HSLColor tertiaryDarkColor(double tone) => HSLColor.fromAHSL(1.0, 312.0, 0.33, tone);

HSLColor neutralColor(double tone) => HSLColor.fromAHSL(1.0, 0.0, 0.0, tone);

HSLColor neutralVariantColor(double tone) => HSLColor.fromAHSL(1.0, 44.0, 0.25, tone);
HSLColor neutralDarkVariantColor(double tone) => HSLColor.fromAHSL(1.0, 228.0, 0.18, tone);

HSLColor errorColor(double tone) => HSLColor.fromAHSL(1.0, 0.0, 0.70, tone);

ColorScheme terreDeFanghColors() {
  final ColorScheme base = ThemeData().colorScheme;
  return base.copyWith(
    //primary color
    primary: primaryColor(0.40).toColor(),
    onPrimary: primaryColor(1.0).toColor(),
    primaryContainer: primaryColor(0.90).toColor(),
    onPrimaryContainer: primaryColor(0.10).toColor(),
    //secondary color
    secondary: secondaryColor(0.40).toColor(),
    onSecondary: secondaryColor(1.0).toColor(),
    secondaryContainer: secondaryColor(0.90).toColor(),
    onSecondaryContainer: secondaryColor(0.10).toColor(),
    //tertiary color
    tertiary: tertiaryColor(0.40).toColor(),
    onTertiary: tertiaryColor(1.0).toColor(),
    tertiaryContainer: tertiaryColor(0.90).toColor(),
    onTertiaryContainer: tertiaryColor(0.10).toColor(),
    //surface color
    background: neutralVariantColor(0.70).toColor(),
    onBackground: neutralColor(0.10).toColor(),
    surface: neutralVariantColor(0.70).toColor(),
    onSurface: neutralColor(0.10).toColor(),
    //variant color
    surfaceVariant: neutralVariantColor(0.62).toColor(),
    onSurfaceVariant: neutralVariantColor(0.30).toColor(),
    outline: neutralVariantColor(0.35).toColor(),
    outlineVariant: neutralVariantColor(0.52).toColor(),
    //error color
    error: errorColor(0.40).toColor(),
    onError: errorColor(1.0).toColor(),
    errorContainer: errorColor(0.90).toColor(),
    onErrorContainer: errorColor(0.10).toColor(),
    //modify color
    shadow: neutralVariantColor(0.50).toColor(),
    scrim: neutralVariantColor(0.50).toColor(),
    surfaceTint: neutralVariantColor(0.50).toColor(),
  );
}

ColorScheme terreDeFanghColorsDark() {
  final ColorScheme base = ThemeData.dark().colorScheme;
  return base.copyWith(
    //primary dark color
    primary: primaryDarkColor(0.80).toColor(),
    onPrimary: primaryDarkColor(0.20).toColor(),
    primaryContainer: primaryDarkColor(0.30).toColor(),
    onPrimaryContainer: primaryDarkColor(0.90).toColor(),
    //secondary dark color
    secondary: secondaryDarkColor(0.80).toColor(),
    onSecondary: secondaryDarkColor(0.20).toColor(),
    secondaryContainer: secondaryDarkColor(0.30).toColor(),
    onSecondaryContainer: secondaryDarkColor(0.90).toColor(),
    //tertiary dark color
    tertiary: tertiaryDarkColor(0.80).toColor(),
    onTertiary: tertiaryDarkColor(0.20).toColor(),
    tertiaryContainer: tertiaryDarkColor(0.30).toColor(),
    onTertiaryContainer: tertiaryDarkColor(0.90).toColor(),
    //surface dark color
    background: neutralColor(0.06).toColor(),
    onBackground: neutralColor(0.90).toColor(),
    surface: neutralColor(0.06).toColor(),
    onSurface: neutralColor(0.90).toColor(),
    //variant dark color
    surfaceVariant: neutralDarkVariantColor(0.22).toColor(),
    onSurfaceVariant: neutralDarkVariantColor(0.80).toColor(),
    outline: neutralDarkVariantColor(0.60).toColor(),
    outlineVariant: neutralDarkVariantColor(0.30).toColor(),
    //error dark color
    error: errorColor(0.80).toColor(),
    onError: errorColor(0.20).toColor(),
    errorContainer: errorColor(0.30).toColor(),
    onErrorContainer: errorColor(0.90).toColor(),
    //modify dark color
    shadow: neutralDarkVariantColor(0.50).toColor(),
    scrim: neutralDarkVariantColor(0.50).toColor(),
    surfaceTint: neutralDarkVariantColor(0.50).toColor(),
  );
}
