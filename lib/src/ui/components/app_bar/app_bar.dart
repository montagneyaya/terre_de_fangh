import 'package:flutter/material.dart';

AppBar terreDeFanghAppBar(BuildContext context, Text titleApp, PreferredSizeWidget? bottomApp) {
  return AppBar(
    title: titleApp,
    bottom: bottomApp,
  );
}
