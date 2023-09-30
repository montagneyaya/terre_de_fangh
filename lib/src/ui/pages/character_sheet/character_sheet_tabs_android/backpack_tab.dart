part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_backpack_android.dart';

Widget _backpackTab(BuildContext context) {
  return Container(
    decoration: background(context, imageBackpack, BoxFit.contain),
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
                Expanded(
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      terreDeFanghTextBodyMedium(context, LangCharacterSheet.maxLoadCharacter),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: terreDeFanghTextField(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child:
                            terreDeFanghTextBodyMedium(context, LangCharacterSheet.totalLoadCharacter),
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
                  child:
                      terreDeFanghLabelTextField(context, LangCharacterSheet.equipmentWeightCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.backPackWeightCharacter),
                ),
                const Spacer(),
                Expanded(
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      terreDeFanghTextBodyMedium(context, LangUI.backpackCharacter),
                      Expanded(
                        flex: 2,
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
                      terreDeFanghTextBodyMedium(context, LangCharacterSheet.kgMaxBackpack),
                    ],
                  ),
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
                Expanded(
                  child: terreDeFanghTextField(context),
                ),
                Expanded(
                  child: terreDeFanghTextField(context),
                ),
                Expanded(
                  child: terreDeFanghTextField(context),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.clothesCharacter),
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
