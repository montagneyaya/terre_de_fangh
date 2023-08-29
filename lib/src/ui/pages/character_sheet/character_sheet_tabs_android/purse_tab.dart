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
            padding: EdgeInsets.only(bottom: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      terreDeFanghTextBodyMedium(context, Lang.purseCharacter),
                      Expanded(
                        flex: 3,
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
                      terreDeFanghTextBodyMedium(context, Lang.maxPurse),
                    ],
                  ),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.beryliumCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.thritilCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.goldCoinsCharacter),
                ),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.argentCoinsCharacter),
                ),
                Spacer(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: terreDeFanghTextBodyMedium(context, Lang.gemsCharacter),
                      ),
                      Expanded(
                        child: terreDeFanghTextBodyMedium(context, Lang.ugCharacter),
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
                          padding: EdgeInsets.only(left: 8),
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
                          padding: EdgeInsets.only(left: 8),
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
                          padding: EdgeInsets.only(left: 8),
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
                          padding: EdgeInsets.only(left: 8),
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
                          padding: EdgeInsets.only(left: 8),
                          child: terreDeFanghTextField(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  child: terreDeFanghLabelTextField(context, Lang.otherMoney),
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
