import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/components/tab_bar/tab_bar.dart';
import 'package:terre_de_fangh/src/ui/instances/tab_bar/tab_bar_character_sheet_android.dart';
import 'package:terre_de_fangh/src/ui/responsive/device.dart';
import 'package:terre_de_fangh/src/ui/components/base/base_android_handset.dart';
import 'package:terre_de_fangh/src/ui/instances/bottom_nav_bar/bottom_navigation_bar_character_sheet.dart';
import 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_purse_android.dart';

class CharacterSheetPursePage extends StatelessWidget {
  Widget _content(BuildContext context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO: Handle this case.
        break;
      case Devices.androidHandset:
        return CharacterSheetPurseAndroid();
      case Devices.iOSHandset:
        // TODO: Handle this case.
        break;
      case Devices.androidTablet:
        // TODO: Handle this case.
        break;
      case Devices.iOSTablet:
        // TODO: Handle this case.
        break;
      case Devices.windows:
        // TODO: Handle this case.
        break;
      case Devices.linux:
        // TODO: Handle this case.
        break;
      case Devices.macOS:
        // TODO: Handle this case.
        break;
      case Devices.fuchsia:
        // TODO: Handle this case.
        break;
      case null:
        return Scaffold();
    }
    return Scaffold();
  }

  Widget _characterSheetBase(BuildContext context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO: Handle this case.
        break;
      case Devices.androidHandset:
        return BaseAndroid(_content(context), null, false, tabBarAndroid(context, pouchTab),
            homeNavigation(4, context));
      case Devices.iOSHandset:
        // TODO: Handle this case.
        break;
      case Devices.androidTablet:
        // TODO: Handle this case.
        break;
      case Devices.iOSTablet:
        // TODO: Handle this case.
        break;
      case Devices.windows:
        // TODO: Handle this case.
        break;
      case Devices.linux:
        // TODO: Handle this case.
        break;
      case Devices.macOS:
        // TODO: Handle this case.
        break;
      case Devices.fuchsia:
        // TODO: Handle this case.
        break;
      case null:
        return Scaffold();
    }
    return Scaffold();
  }

  @override
  Widget build(BuildContext context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO: Handle this case.
        break;
      case Devices.androidHandset:
        return DefaultTabController(length: 1, child: _characterSheetBase(context));
      case Devices.iOSHandset:
        // TODO: Handle this case.
        break;
      case Devices.androidTablet:
        // TODO: Handle this case.
        break;
      case Devices.iOSTablet:
        // TODO: Handle this case.
        break;
      case Devices.windows:
        // TODO: Handle this case.
        break;
      case Devices.linux:
        // TODO: Handle this case.
        break;
      case Devices.macOS:
        // TODO: Handle this case.
        break;
      case Devices.fuchsia:
        // TODO: Handle this case.
        break;
      case null:
        return Scaffold();
    }
    return Scaffold();
  }
}
