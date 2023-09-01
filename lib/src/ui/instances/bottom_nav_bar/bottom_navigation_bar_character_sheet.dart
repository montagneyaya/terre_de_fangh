import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/themes/icons_rpg.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/lang.dart';
import 'package:go_router/go_router.dart';

NavigationBar homeNavigation(int index, BuildContext context) {
  return NavigationBar(
    selectedIndex: index,
    destinations: const [
      NavigationDestination(
        icon: Icon(IconsRPG.dwarf),
        label: Lang.hero,
      ),
      NavigationDestination(
        icon: Icon(IconsRPG.weapons),
        label: Lang.fightCharacter,
      ),
      NavigationDestination(
        icon: Icon(IconsRPG.equipment),
        label: Lang.items,
      ),
      NavigationDestination(
        icon: Icon(IconsRPG.backpack),
        label: Lang.bag,
      ),
      NavigationDestination(
        icon: Icon(IconsRPG.purse),
        label: Lang.purseCharacter,
      ),
    ],
    onDestinationSelected: (index) {
      switch (index) {
        case 0:
          context.pushReplacement('/character-sheet/main');
          break;
        case 1:
          context.pushReplacement('/character-sheet/fight');
          break;
        case 2:
          context.pushReplacement('/character-sheet/items');
          break;
        case 3:
          context.pushReplacement('/character-sheet/backpack');
          break;
        case 4:
          context.pushReplacement('/character-sheet/purse');
          break;
      }
    },
  );
}
