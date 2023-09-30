import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/ui.dart';

List<Tab> mainTab = [
  const Tab(text: LangUI.sheetCharacter),
  const Tab(text: LangUI.statisticsCharacter),
  const Tab(text: LangUI.skillsCharacter),
];

List<Tab> fightTab = [
  const Tab(text: LangUI.weaponsCharacter),
  const Tab(text: LangUI.armorsCharacter),
  const Tab(text: LangUI.fightCharacter),
];

List<Tab> equipmentTab = [
  const Tab(text: LangUI.backpackCharacter),
  const Tab(text: LangUI.campingCharacter),
  const Tab(text: LangUI.treasuresCharacter),
];

List<Tab> jobEquipmentTab = [
  const Tab(
    child: Column(
      children: [
        Expanded(child: Text(LangUI.itemsMagics1Character)),
        Expanded(child: Text(LangUI.itemsMagics2Character)),
      ],
    ),
  ),
  const Tab(
    child: Column(
      children: [
        Expanded(child: Text(LangUI.potionsAmmo1Character)),
        Expanded(child: Text(LangUI.potionsAmmo2Character)),
      ],
    ),
  ),
  const Tab(
    child: Column(
      children: [
        Expanded(child: Text(LangUI.ingredientsBooks1Character)),
        Expanded(child: Text(LangUI.ingredientsBooks2Character)),
      ],
    ),
  ),
];

List<Tab> pouchTab = [
  const Tab(text: LangUI.purseCharacter),
];
