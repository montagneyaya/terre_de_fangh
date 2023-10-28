part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_android.dart';

Widget _statisticsTab(BuildContext context) {
  return Container(
    decoration: background(context, imageStatistics, BoxFit.contain),
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
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.levelCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.experienceCharacter),
                ),
                const Spacer(),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.fatePointsCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.healthPointsCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.astralPointsCharacter),
                ),
                const Spacer(),
                Expanded(
                  child:
                      terreDeFanghLabelTextField(context, LangCharacterSheet.spellResistanceCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.physicalSpellCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.psychicSpellCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.engineerCharacter),
                ),
                const Spacer(),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.courageCOUCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.intellectINTCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.charismaCHACharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.dexterityDEXCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.strengthSTRCharacter),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
