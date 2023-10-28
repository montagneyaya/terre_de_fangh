import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/ui.dart';
import 'package:terre_de_fangh/src/routes/routes_path.dart';
import 'package:terre_de_fangh/src/ui/themes/icons_rpg.dart';

NavigationBar homeNavigation(int index, BuildContext context) {
  return NavigationBar(
    selectedIndex: index,
    destinations: const [
      NavigationDestination(
        icon: Icon(IconsRPG.dwarf),
        label: LangUI.hero,
      ),
      NavigationDestination(
        icon: Icon(IconsRPG.weapons),
        label: LangUI.fightCharacter,
      ),
      NavigationDestination(
        icon: Icon(IconsRPG.equipment),
        label: LangUI.items,
      ),
      NavigationDestination(
        icon: Icon(IconsRPG.backpack),
        label: LangUI.bag,
      ),
      NavigationDestination(
        icon: Icon(IconsRPG.purse),
        label: LangUI.purseCharacter,
      ),
    ],
    onDestinationSelected: (index) {
      switch (index) {
        case 0:
          context.goNamed(RoutesPath.characterSheetMain);
        case 1:
          context.goNamed(RoutesPath.characterSheetFight);
        case 2:
          context.goNamed(RoutesPath.characterSheetItems);
        case 3:
          context.goNamed(RoutesPath.characterSheetBackPack);
        case 4:
          context.goNamed(RoutesPath.characterSheetPurse);
      }
    },
  );
}
