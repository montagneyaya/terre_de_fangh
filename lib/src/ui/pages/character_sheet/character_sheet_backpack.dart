import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/components/base/base_android_handset.dart';
import 'package:terre_de_fangh/src/ui/components/tab_bar/tab_bar.dart';
import 'package:terre_de_fangh/src/ui/instances/bottom_nav_bar/bottom_navigation_bar_character_sheet.dart';
import 'package:terre_de_fangh/src/ui/instances/tab_bar/tab_bar_character_sheet_android.dart';
import 'package:terre_de_fangh/src/ui/pages/character_sheet/character_sheet_backpack_android.dart';
import 'package:terre_de_fangh/src/ui/responsive/device.dart';

class CharacterSheetBackPackPage extends StatelessWidget {
  const CharacterSheetBackPackPage({super.key});

  Widget _content(BuildContext context) {
    final device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO(web): Handle this case.
        break;
      case Devices.androidHandset:
        return const CharacterSheetBackPackAndroid();
      case Devices.iOSHandset:
        // TODO(iOSHandset): Handle this case.
        break;
      case Devices.androidTablet:
        // TODO(androidTablet): Handle this case.
        break;
      case Devices.iOSTablet:
        // TODO(iOSTablet): Handle this case.
        break;
      case Devices.windows:
        // TODO(windows): Handle this case.
        break;
      case Devices.linux:
        // TODO(linux): Handle this case.
        break;
      case Devices.macOS:
        // TODO(macOS): Handle this case.
        break;
      case Devices.fuchsia:
        // TODO(fuchsia): Handle this case.
        break;
      case null:
        return const Scaffold();
    }
    return const Scaffold();
  }

  Widget _characterSheetBase(BuildContext context) {
    final device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO(web): Handle this case.
        break;
      case Devices.androidHandset:
        return BaseAndroid(_content(context), null, tabBarAndroid(context, equipmentTab),
            homeNavigation(3, context),);
      case Devices.iOSHandset:
        // TODO(iOSHandset): Handle this case.
        break;
      case Devices.androidTablet:
        // TODO(androidTablet): Handle this case.
        break;
      case Devices.iOSTablet:
        // TODO(iOSTablet): Handle this case.
        break;
      case Devices.windows:
        // TODO(windows): Handle this case.
        break;
      case Devices.linux:
        // TODO(linux): Handle this case.
        break;
      case Devices.macOS:
        // TODO(macOS): Handle this case.
        break;
      case Devices.fuchsia:
        // TODO(fuchsia): Handle this case.
        break;
      case null:
        return const Scaffold();
    }
    return const Scaffold();
  }

  @override
  Widget build(BuildContext context) {
    final device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO(web): Handle this case.
        break;
      case Devices.androidHandset:
        return DefaultTabController(length: 3, child: _characterSheetBase(context));
      case Devices.iOSHandset:
        // TODO(iOSHandset): Handle this case.
        break;
      case Devices.androidTablet:
        // TODO(androidTablet): Handle this case.
        break;
      case Devices.iOSTablet:
        // TODO(iOSTablet): Handle this case.
        break;
      case Devices.windows:
        // TODO(windows): Handle this case.
        break;
      case Devices.linux:
        // TODO(linux): Handle this case.
        break;
      case Devices.macOS:
        // TODO(macOS): Handle this case.
        break;
      case Devices.fuchsia:
        // TODO(fuchsia): Handle this case.
        break;
      case null:
        return const Scaffold();
    }
    return const Scaffold();
  }
}
