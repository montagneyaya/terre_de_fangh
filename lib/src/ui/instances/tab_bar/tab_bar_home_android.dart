import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/lang/lang.dart';

List<Tab> homeTab = [
  Tab(text: Lang.characters),
  Tab(text: Lang.adventures),
  Tab(
    child: Column(
      children: [
        Expanded(child: Text(Lang.adventures)),
        Expanded(child: Text(Lang.adventuresSolo)),
      ],
    ),
  ),
];
