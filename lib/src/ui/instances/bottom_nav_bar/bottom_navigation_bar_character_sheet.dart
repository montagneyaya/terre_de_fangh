import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/routes/routes_path.dart';
import 'package:terre_de_fangh/src/ui/themes/icons_rpg.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/ui.dart';
import 'package:go_router/go_router.dart';

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
          context.pushReplacement(RoutesPath.characterSheetMain);
          break;
        case 1:
          context.pushReplacement(RoutesPath.characterSheetFight);
          break;
        case 2:
          context.pushReplacement(RoutesPath.characterSheetItems);
          break;
        case 3:
          context.pushReplacement(RoutesPath.characterSheetBackPack);
          break;
        case 4:
          context.pushReplacement(RoutesPath.characterSheetPurse);
          break;
      }
    },
  );
}
