import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/components/background/background.dart';
import 'package:terre_de_fangh/src/ui/components/base/base_web.dart';
import 'package:terre_de_fangh/src/ui/components/tab_bar/tab_bar.dart';
import 'package:terre_de_fangh/src/ui/components/base/base_android_handset.dart';
import 'package:terre_de_fangh/src/ui/instances/background/background.dart';
import 'package:terre_de_fangh/src/ui/instances/tab_bar/tab_bar_home_android.dart';
import 'package:terre_de_fangh/src/ui/pages/home/home_web.dart';
import 'package:terre_de_fangh/src/ui/responsive/device.dart';
import 'package:terre_de_fangh/src/ui/pages/home/home_android.dart';

class HomePage extends StatelessWidget {
  Widget _content(BuildContext context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        return HomeWeb();
      case Devices.androidHandset:
        return HomeAndroid();
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

  Widget _homeBase(BuildContext context) {
    final Device device = Device();
    switch (device.device(context)) {
      case Devices.web:
        return BaseWeb(_content(context), background(context, imageWeb, BoxFit.cover));
      case Devices.androidHandset:
        return BaseAndroid(_content(context), null, true, tabBarAndroid(context, homeTab), null);
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
        return _homeBase(context);
      case Devices.androidHandset:
        return DefaultTabController(length: 3, child: _homeBase(context));
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
