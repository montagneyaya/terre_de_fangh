import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:terre_de_fangh/src/ui/components/background/background.dart';
import 'package:terre_de_fangh/src/ui/components/text/label_text_field.dart';
import 'package:terre_de_fangh/src/ui/components/text/text.dart';
import 'package:terre_de_fangh/src/ui/components/text/text_field.dart';
import 'package:terre_de_fangh/src/ui/instances/background/background.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/lang.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/backpack_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/camping_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/treasures_tab.dart';

class CharacterSheetBackPackAndroid extends StatefulWidget {
  const CharacterSheetBackPackAndroid({super.key});

  @override
  State<CharacterSheetBackPackAndroid> createState() => _CharacterSheetBackPackAndroidState();
}

class _CharacterSheetBackPackAndroidState extends State<CharacterSheetBackPackAndroid> {
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
        _backpackTab(context),
        _campingTab(context),
        _treasuresTab(context),
      ],
    );
  }
}
