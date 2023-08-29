import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/components/app_bar/app_bar.dart';
import 'package:terre_de_fangh/src/lang/lang.dart';

AppBar appBarWeb(context) {
  return terreDeFanghAppBar(context, Text(Lang.appName), null);
}
