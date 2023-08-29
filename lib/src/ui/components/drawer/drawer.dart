import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/instances/drawer/drawer.dart';

Widget buildNavigation(BuildContext context) {
  return Drawer(
    child: menuApp(context),
  );
}
