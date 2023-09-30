part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_backpack_android.dart';

Widget _campingTable(BuildContext context, String label) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Expanded(
          flex: 5,
          child: terreDeFanghTextBodyMedium(context, label),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: terreDeFanghTextField(context),
              ),
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
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _campingTab(BuildContext context) {
  return Container(
    decoration: background(context, imageCamping, BoxFit.contain),
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
                    Expanded(
                      flex: 3,
                      child: terreDeFanghTextBodyMedium(
                          context, LangCharacterSheet.bivouacEquipmentCharacter),
                    ),
                    Expanded(
                      flex: 2,
                      child: terreDeFanghTextBodyMedium(context, LangCharacterSheet.recoveryCharacter),
                    ),
                    Expanded(
                      child:
                          terreDeFanghTextBodyMedium(context, LangCharacterSheet.weightEquipmentBivouac),
                    ),
                  ],
                ),
                _campingTable(context, LangCharacterSheet.tentCharacter),
                _campingTable(context, LangCharacterSheet.mattressCharacter),
                _campingTable(context, LangCharacterSheet.blanketCharacter),
                const Spacer(),
                terreDeFanghTextBodyMedium(context, LangCharacterSheet.foodDrinkCharacter),
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
