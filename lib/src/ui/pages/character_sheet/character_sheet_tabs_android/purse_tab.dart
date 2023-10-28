part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_purse_android.dart';

Widget _purseTab(BuildContext context) {
  return Container(
    decoration: background(context, imagePouch, BoxFit.contain),
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
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      terreDeFanghTextBodyMedium(context, LangUI.purseCharacter),
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
                      terreDeFanghTextBodyMedium(context, LangCharacterSheet.maxPurse),
                    ],
                  ),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.beryliumCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.thritilCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.goldCoinsCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.silverCoinsCharacter),
                ),
                const Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: terreDeFanghTextBodyMedium(context, LangCharacterSheet.gemsCharacter),
                      ),
                      Expanded(
                        child: terreDeFanghTextBodyMedium(context, LangCharacterSheet.ugCharacter),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: terreDeFanghTextField(context),
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
                    children: [
                      Expanded(
                        flex: 4,
                        child: terreDeFanghTextField(context),
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
                    children: [
                      Expanded(
                        flex: 4,
                        child: terreDeFanghTextField(context),
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
                    children: [
                      Expanded(
                        flex: 4,
                        child: terreDeFanghTextField(context),
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
                    children: [
                      Expanded(
                        flex: 4,
                        child: terreDeFanghTextField(context),
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
                const Spacer(),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.otherMoney),
                ),
                Expanded(
                  child: terreDeFanghTextField(context),
                ),
                Expanded(
                  child: terreDeFanghTextField(context),
                ),
                Expanded(
                  child: terreDeFanghTextField(context),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
