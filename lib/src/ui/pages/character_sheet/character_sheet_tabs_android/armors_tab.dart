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
                    terreDeFanghTextBodyMedium(context, Lang.bonusMalusWeaponArmor),
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
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 4,
                      child: terreDeFanghTextBodyMedium(context, Lang.armorsCharacter),
                    ),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, Lang.naturalProtectionArmor),
                    ),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, Lang.spellProtectionArmor),
                    ),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, Lang.breakPointsWeaponArmor),
                    ),
                  ],
                ),
                _armorsTable(context, Lang.headCharacter),
                _armorsTable(context, Lang.chestCharacter),
                _armorsTable(context, Lang.armsCharacter),
                _armorsTable(context, Lang.handsCharacter),
                _armorsTable(context, Lang.shieldCharacter),
                _armorsTable(context, Lang.legsCharacter),
                _armorsTable(context, Lang.feetCharacter),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
