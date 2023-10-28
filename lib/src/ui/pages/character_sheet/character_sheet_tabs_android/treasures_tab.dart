part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_backpack_android.dart';

Widget _treasuresTab(BuildContext context) {
  return Container(
    decoration: background(context, imageTreasures, BoxFit.contain),
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
                terreDeFanghTextBodyMedium(context, LangCharacterSheet.treasuresItemsQuestCharacter),
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
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
