import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:terre_de_fangh/src/ui/components/background/background.dart';
import 'package:terre_de_fangh/src/ui/components/text/text.dart';
import 'package:terre_de_fangh/src/ui/components/text/text_field.dart';
import 'package:terre_de_fangh/src/ui/instances/background/background.dart';
import 'package:terre_de_fangh/src/lang/lang.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/items_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/potions_munitions_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/books_ingredients_tab.dart';

class CharacterSheetItemsAndroid extends StatefulWidget {
  @override
  _CharacterSheetItemsAndroidState createState() => _CharacterSheetItemsAndroidState();
}

class _CharacterSheetItemsAndroidState extends State<CharacterSheetItemsAndroid> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        _itemsTab(context),
        _potionsMunitionsTab(context),
        _booksIngredientsTab(context),
      ],
    );
  }
}
