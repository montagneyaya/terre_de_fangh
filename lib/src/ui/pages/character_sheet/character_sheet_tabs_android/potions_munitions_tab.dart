part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_items_android.dart';

Widget _potionsMunitionsTab(BuildContext context) {
  return Container(
    decoration: background(context, imagePotions, BoxFit.contain),
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
                  flex: 7,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: terreDeFanghTextBodyMedium(context, Lang.numberAmmo),
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
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Expanded(
                                child: terreDeFanghTextBodyMedium(context, Lang.ammoCharacter),
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
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Expanded(
                                child: terreDeFanghTextBodyMedium(context, Lang.effectsItemAmmoPotion),
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
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 9,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: terreDeFanghTextBodyMedium(context, Lang.dosesPotion),
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
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Expanded(
                                child: terreDeFanghTextBodyMedium(context, Lang.potionsPoisonsCharacter),
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
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Expanded(
                                child: terreDeFanghTextBodyMedium(context, Lang.effectsItemAmmoPotion),
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
