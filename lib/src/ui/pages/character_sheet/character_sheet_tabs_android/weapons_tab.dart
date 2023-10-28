part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_fight_android.dart';

Widget _weaponsTable(BuildContext context, String label) {
  return Expanded(
    flex: 2,
    child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    terreDeFanghTextBodyMedium(context, label),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: terreDeFanghTextField(context),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: terreDeFanghTextField(context),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: terreDeFanghTextField(context),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    const Checkbox(value: false, onChanged: null),
                    terreDeFanghTextBodyMedium(context, LangCharacterSheet.bonusMalusWeaponArmor),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: terreDeFanghTextField(context),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _weaponsTab(BuildContext context) {
  return Container(
    decoration: background(context, imageWeapons, BoxFit.contain),
    child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height -
                Scaffold.of(context).appBarMaxHeight! -
                kToolbarHeight -
                kBottomNavigationBarHeight,
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 4,
                      child: terreDeFanghTextBodyMedium(context, LangCharacterSheet.weaponryCharacter),
                    ),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, LangCharacterSheet.impactPointsWeapon),
                    ),
                    Expanded(
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.breakPointsWeaponArmor),
                    ),
                  ],
                ),
                _weaponsTable(context, LangCharacterSheet.weapon1CharacterFight),
                _weaponsTable(context, LangCharacterSheet.weapon2CharacterFight),
                _weaponsTable(context, LangCharacterSheet.weapon3CharacterFight),
                _weaponsTable(context, LangCharacterSheet.weapon4CharacterFight),
                _weaponsTable(context, LangCharacterSheet.weapon5CharacterFight),
                const Spacer(),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.addNaturalsDamages),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.addSpellsDamages),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
