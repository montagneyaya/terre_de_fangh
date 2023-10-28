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
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Spacer(flex: 2),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, LangCharacterSheet.baseFight),
                    ),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, LangCharacterSheet.modifierFight),
                    ),
                    Expanded(
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.weapon1CharacterFight),
                    ),
                    Expanded(
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.weapon2CharacterFight),
                    ),
                  ],
                ),
                _fightTable(context, LangCharacterSheet.attackATCharacter),
                _fightTable(context, LangCharacterSheet.throwTHCharacter),
                _fightTable(context, LangCharacterSheet.parryPACharacter),
                Row(
                  children: [
                    const Spacer(flex: 3),
                    Expanded(
                      flex: 2,
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.weapon3CharacterFight),
                    ),
                    Expanded(
                      flex: 2,
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.weapon4CharacterFight),
                    ),
                    Expanded(
                      flex: 2,
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.weapon5CharacterFight),
                    ),
                  ],
                ),
                _fightTable2(context, LangCharacterSheet.attackATCharacter),
                _fightTable2(context, LangCharacterSheet.throwTHCharacter),
                _fightTable2(context, LangCharacterSheet.parryPACharacter),
                Expanded(
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      terreDeFanghTextBodyMedium(context, LangCharacterSheet.dodgeDOCharacter),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: terreDeFanghTextBodyMedium(context, LangCharacterSheet.baseFight),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: terreDeFanghTextField(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: terreDeFanghTextBodyMedium(context, LangCharacterSheet.modifierFight),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
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
                              child: terreDeFanghLabelTextField(
                                  context, LangCharacterSheet.naturalProtectionFight,),
                            ),
                            Expanded(
                              child: terreDeFanghLabelTextField(
                                  context, LangCharacterSheet.spellProtectionFight,),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Expanded(
                                        child: terreDeFanghTextBodyMedium(
                                            context, LangCharacterSheet.painForWeak1Fight,),
                                      ),
                                      Expanded(
                                        child: terreDeFanghTextBodyMedium(
                                            context, LangCharacterSheet.painForWeak2Fight,),
                                      ),
                                    ],
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
                              child: terreDeFanghLabelTextField(
                                  context, LangCharacterSheet.totalProtectionFight,),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            children: [
                              Expanded(
                                child: terreDeFanghLabelTextField(
                                    context, LangCharacterSheet.headCharacter,),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(
                                    context, LangCharacterSheet.chestCharacter,),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(
                                    context, LangCharacterSheet.armsCharacter,),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(
                                    context, LangCharacterSheet.handsCharacter,),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(
                                    context, LangCharacterSheet.shieldCharacter,),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(
                                    context, LangCharacterSheet.legsCharacter,),
                              ),
                              Expanded(
                                child: terreDeFanghLabelTextField(
                                    context, LangCharacterSheet.feetCharacter,),
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
