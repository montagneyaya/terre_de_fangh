import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/character_sheet.dart';
import 'package:terre_de_fangh/src/ui/components/background/background.dart';
import 'package:terre_de_fangh/src/ui/components/text/label_text_field.dart';
import 'package:terre_de_fangh/src/ui/components/text/text.dart';
import 'package:terre_de_fangh/src/ui/components/text/text_field.dart';
import 'package:terre_de_fangh/src/ui/instances/background/background.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/ui.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/fight_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/weapons_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/armors_tab.dart';

class CharacterSheetFightAndroid extends StatefulWidget {
  const CharacterSheetFightAndroid({super.key});

  @override
  State<CharacterSheetFightAndroid> createState() => _CharacterSheetFightAndroidState();
}

class _CharacterSheetFightAndroidState extends State<CharacterSheetFightAndroid> {
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
        _weaponsTab(context),
        _armorsTab(context),
        _fightTab(context),
      ],
    );
  }
}
