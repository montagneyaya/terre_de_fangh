part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_android.dart';

Widget _mainTab(BuildContext context) {
  return Container(
    decoration: background(context, imageMain, BoxFit.contain),
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
                  flex: 6,
                  child: Center(
                    child: Container(
                      width: 160,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).colorScheme.outline),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.nameCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.genderCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.peopleCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.jobCharacter),
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
                  child: terreDeFanghLabelTextField(context, LangCharacterSheet.particularSigns),
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
