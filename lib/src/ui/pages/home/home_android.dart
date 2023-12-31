import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:terre_de_fangh/src/ui/components/background/background.dart';
import 'package:terre_de_fangh/src/ui/instances/background/background.dart';
import 'package:terre_de_fangh/src/data/resources/services/save.dart';
import 'package:go_router/go_router.dart';
part 'package:terre_de_fangh/src/ui/pages/home/home_tabs_android/character_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/home/home_tabs_android/quest_tab.dart';
part 'package:terre_de_fangh/src/ui/pages/home/home_tabs_android/solo_quest_tab.dart';

class HomeAndroid extends StatefulWidget {
  @override
  _HomeAndroidState createState() => _HomeAndroidState();
}

class _HomeAndroidState extends State<HomeAndroid> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        CharacterTab(),
        _questTab(context),
        _soloQuestTab(context),
      ],
    );
  }
}
