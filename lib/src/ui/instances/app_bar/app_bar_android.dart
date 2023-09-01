import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/components/app_bar/app_bar.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/lang.dart';

AppBar appBarAndroid(context, bottomAndroid) {
  return terreDeFanghAppBar(context, const Text(Lang.appName), bottomAndroid);
}
