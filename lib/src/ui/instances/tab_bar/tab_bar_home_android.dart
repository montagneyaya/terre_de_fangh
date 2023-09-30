import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/ui.dart';

List<Tab> homeTab = [
  const Tab(text: LangUI.characters),
  const Tab(text: LangUI.adventures),
  const Tab(
    child: Column(
      children: [
        Expanded(child: Text(LangUI.adventures)),
        Expanded(child: Text(LangUI.adventuresSolo)),
      ],
    ),
  ),
];
