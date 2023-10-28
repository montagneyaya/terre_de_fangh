part of 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_items_android.dart';

Widget _booksIngredientsTab(BuildContext context) {
  return Container(
    decoration: background(context, imageBooks, BoxFit.contain),
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
                  flex: 9,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: terreDeFanghTextBodyMedium(
                                  context, LangCharacterSheet.quantityIngredient,),
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
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Expanded(
                                child: terreDeFanghTextBodyMedium(
                                    context, LangCharacterSheet.ingredientsCharacter,),
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
                const Spacer(),
                Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child:
                                  terreDeFanghTextBodyMedium(context, LangCharacterSheet.booksCharacter),
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
