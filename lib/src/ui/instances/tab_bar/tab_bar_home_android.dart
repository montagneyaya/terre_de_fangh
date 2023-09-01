import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/lang.dart';

List<Tab> homeTab = [
  const Tab(text: Lang.characters),
  const Tab(text: Lang.adventures),
  const Tab(
    child: Column(
      children: [
        Expanded(child: Text(Lang.adventures)),
        Expanded(child: Text(Lang.adventuresSolo)),
      ],
    ),
  ),
];
