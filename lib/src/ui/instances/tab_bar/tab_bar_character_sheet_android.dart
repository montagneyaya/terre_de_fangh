import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/lang.dart';

List<Tab> mainTab = [
  const Tab(text: Lang.sheetCharacter),
  const Tab(text: Lang.statisticsCharacter),
  const Tab(text: Lang.skillsCharacter),
];

List<Tab> fightTab = [
  const Tab(text: Lang.weaponsCharacter),
  const Tab(text: Lang.armorsCharacter),
  const Tab(text: Lang.fightCharacter),
];

List<Tab> equipmentTab = [
  const Tab(text: Lang.backpackCharacter),
  const Tab(text: Lang.campingCharacter),
  const Tab(text: Lang.treasuresCharacter),
];

List<Tab> jobEquipmentTab = [
  const Tab(
    child: Column(
      children: [
        Expanded(child: Text(Lang.itemsMagics1Character)),
        Expanded(child: Text(Lang.itemsMagics2Character)),
      ],
    ),
  ),
  const Tab(
    child: Column(
      children: [
        Expanded(child: Text(Lang.potionsAmmo1Character)),
        Expanded(child: Text(Lang.potionsAmmo2Character)),
      ],
    ),
  ),
  const Tab(
    child: Column(
      children: [
        Expanded(child: Text(Lang.ingredientsBooks1Character)),
        Expanded(child: Text(Lang.ingredientsBooks2Character)),
      ],
    ),
  ),
];

List<Tab> pouchTab = [
  const Tab(text: Lang.purseCharacter),
];
