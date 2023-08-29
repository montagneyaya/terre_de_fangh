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
            padding: EdgeInsets.only(bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.levelCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.experienceCharacter),
                ),
                Spacer(),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.fatePointsCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.healthPointsCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.astralPointsCharacter),
                ),
                Spacer(),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.spellResistanceCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.physicalSpellCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.psychicSpellCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.engineerCharacter),
                ),
                Spacer(),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.courageCOUCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.intellectINTCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.charismaCHACharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.dexterityDEXCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.strengthSTRCharacter),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
