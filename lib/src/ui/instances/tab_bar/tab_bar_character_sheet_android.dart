import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/lang/lang.dart';

List<Tab> mainTab = [
  Tab(text: Lang.sheetCharacter),
  Tab(text: Lang.statisticsCharacter),
  Tab(text: Lang.skillsCharacter),
];

List<Tab> fightTab = [
  Tab(text: Lang.weaponsCharacter),
  Tab(text: Lang.armorsCharacter),
  Tab(text: Lang.fightCharacter),
];

List<Tab> equipmentTab = [
  Tab(text: Lang.backpackCharacter),
  Tab(text: Lang.campingCharacter),
  Tab(text: Lang.treasuresCharacter),
];

List<Tab> jobEquipmentTab = [
  Tab(
    child: Column(
      children: [
        Expanded(child: Text(Lang.itemsMagics1Character)),
        Expanded(child: Text(Lang.itemsMagics2Character)),
      ],
    ),
  ),
  Tab(
    child: Column(
      children: [
        Expanded(child: Text(Lang.potionsAmmo1Character)),
        Expanded(child: Text(Lang.potionsAmmo2Character)),
      ],
    ),
  ),
  Tab(
    child: Column(
      children: [
        Expanded(child: Text(Lang.ingredientsBooks1Character)),
        Expanded(child: Text(Lang.ingredientsBooks2Character)),
      ],
    ),
  ),
];

List<Tab> pouchTab = [
  Tab(text: Lang.purseCharacter),
];
