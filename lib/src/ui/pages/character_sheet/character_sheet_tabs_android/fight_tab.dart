part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_fight_android.dart';

Widget _fightTable(BuildContext context, String label) {
  return Expanded(
    child: Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        terreDeFanghTextBodyMedium(context, label),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: terreDeFanghTextField(context),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: terreDeFanghTextField(context),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: terreDeFanghTextField(context),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: terreDeFanghTextField(context),
          ),
        ),
      ],
    ),
  );
}

Widget _fightTable2(BuildContext context, String label) {
  return Expanded(
    child: Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        terreDeFanghTextBodyMedium(context, label),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: terreDeFanghTextField(context),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: terreDeFanghTextField(context),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8),
            child: terreDeFanghTextField(context),
          ),
        ),
      ],
    ),
  );
}

Widget _fightTab(BuildContext context) {
  return Container(
    decoration: background(context, imageFight, BoxFit.contain),
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
            padding: EdgeInsets.only(bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Spacer(flex: 2),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, Lang.baseFight),
                    ),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, Lang.modifierFight),
                    ),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, Lang.weapon1CharacterFight),
                    ),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, Lang.weapon2CharacterFight),
                    ),
                  ],
                ),
                    _fightTable(context, Lang.attackATCharacter),
                    _fightTable(context, Lang.throwTHCharacter),
                    _fightTable(context, Lang.parryPACharacter),
                Row(
                  children: [
                    Spacer(flex: 3),
                    Expanded(
                      flex: 2,
                      child: terreDeFanghTextBodyMedium(context, Lang.weapon3CharacterFight),
                    ),
                    Expanded(
                      flex: 2,
                      child: terreDeFanghTextBodyMedium(context, Lang.weapon4CharacterFight),
                    ),
                    Expanded(
                      flex: 2,
                      child: terreDeFanghTextBodyMedium(context, Lang.weapon5CharacterFight),
                    ),
                  ],
                ),
                    _fightTable2(context, Lang.attackATCharacter),
                    _fightTable2(context, Lang.throwTHCharacter),
                    _fightTable2(context, Lang.parryPACharacter),
                Expanded(
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      terreDeFanghTextBodyMedium(context, Lang.dodgeDOCharacter),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: terreDeFanghTextBodyMedium(context, Lang.baseFight),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: terreDeFanghTextField(context),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: terreDeFanghTextBodyMedium(context, Lang.modifierFight),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: terreDeFanghTextField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: terreDeFanghLabelTextField(context, Lang.naturalProtectionFight),
                            ),
                            Expanded(
                              child: terreDeFanghLabelTextField(context, Lang.spellProtectionFight),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Expanded(
                                        child:
                                            terreDeFanghTextBodyMedium(context, Lang.painForWeak1Fight),
                                      ),
                                      Expanded(
                                        child:
                                            terreDeFanghTextBodyMedium(context, Lang.painForWeak2Fight),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: terreDeFanghTextField(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: terreDeFanghLabelTextField(context, Lang.totalProtectionFight),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            children: [
                              Expanded(
                                child: terreDeFanghLabelTextField(context, Lang.headCharacter),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(context, Lang.chestCharacter),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(context, Lang.armsCharacter),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(context, Lang.handsCharacter),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(context, Lang.shieldCharacter),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(context, Lang.legsCharacter),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(context, Lang.feetCharacter),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
