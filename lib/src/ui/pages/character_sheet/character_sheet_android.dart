import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/character_sheet.dart';
import 'package:terre_de_fangh/src/ui/components/background/background.dart';
import 'package:terre_de_fangh/src/ui/components/text/label_text_field.dart';
import 'package:terre_de_fangh/src/ui/components/text/text_field.dart';
import 'package:terre_de_fangh/src/ui/instances/background/background.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/main_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/skills_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_tabs_android/statistics_tab.dart';

class CharacterSheetAndroid extends StatefulWidget {
  const CharacterSheetAndroid({super.key});

  @override
  State<CharacterSheetAndroid> createState() => _CharacterSheetAndroidState();
}

class _CharacterSheetAndroidState extends State<CharacterSheetAndroid> {
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
        _mainTab(context),
        _statisticsTab(context),
        _skillsTab(context),
      ],
    );
  }
}
