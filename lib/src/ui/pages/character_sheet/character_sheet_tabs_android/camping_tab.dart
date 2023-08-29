part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_backpack_android.dart';

Widget _campingTable(BuildContext context, String label) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spacer(),
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
            padding: EdgeInsets.only(bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: terreDeFanghTextBodyMedium(context, Lang.bivouacEquipmentCharacter),
                    ),
                    Expanded(
                      flex: 2,
                      child: terreDeFanghTextBodyMedium(context, Lang.recoveryCharacter),
                    ),
                    Expanded(
                      child: terreDeFanghTextBodyMedium(context, Lang.weightEquipmentBivouac),
                    ),
                  ],
                ),
                _campingTable(context, Lang.tentCharacter),
                _campingTable(context, Lang.mattressCharacter),
                _campingTable(context, Lang.blanketCharacter),
                Spacer(),
                terreDeFanghTextBodyMedium(context, Lang.foodDrinkCharacter),
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
