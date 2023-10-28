part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_fight_android.dart';

Widget _armorsTable(BuildContext context, String label) {
  return Expanded(
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

Widget _armorsTab(BuildContext context) {
  return Container(
    decoration: background(context, imageArmors, BoxFit.contain),
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
                      child: terreDeFanghTextBodyMedium(context, LangUI.armorsCharacter),
                    ),
                    Expanded(
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.naturalProtectionArmor),
                    ),
                    Expanded(
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.spellProtectionArmor),
                    ),
                    Expanded(
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.breakPointsWeaponArmor),
                    ),
                  ],
                ),
                _armorsTable(context, LangCharacterSheet.headCharacter),
                _armorsTable(context, LangCharacterSheet.chestCharacter),
                _armorsTable(context, LangCharacterSheet.armsCharacter),
                _armorsTable(context, LangCharacterSheet.handsCharacter),
                _armorsTable(context, LangCharacterSheet.shieldCharacter),
                _armorsTable(context, LangCharacterSheet.legsCharacter),
                _armorsTable(context, LangCharacterSheet.feetCharacter),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
