import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/themes/colors.dart';
import 'package:terre_de_fangh/src/ui/themes/typography.dart';

final ThemeData terreDeFanghTheme = ThemeData(
  useMaterial3: true,
  textTheme: terreDeFanghText(),
  colorScheme: terreDeFanghColors(),
  brightness: Brightness.light,
  highlightColor: terreDeFanghColors().primary,
);

final ThemeData terreDeFanghThemeDark = ThemeData(
  useMaterial3: true,
  textTheme: terreDeFanghText(),
  colorScheme: terreDeFanghColorsDark(),
  brightness: Brightness.dark,
  highlightColor: terreDeFanghColorsDark().primary,
);
