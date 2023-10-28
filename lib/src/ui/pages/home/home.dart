import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/components/background/background.dart';
import 'package:terre_de_fangh/src/ui/components/base/base_android_handset.dart';
import 'package:terre_de_fangh/src/ui/components/base/base_web.dart';
import 'package:terre_de_fangh/src/ui/components/tab_bar/tab_bar.dart';
import 'package:terre_de_fangh/src/ui/instances/background/background.dart';
import 'package:terre_de_fangh/src/ui/instances/tab_bar/tab_bar_home_android.dart';
import 'package:terre_de_fangh/src/ui/pages/home/home_android.dart';
import 'package:terre_de_fangh/src/ui/pages/home/home_web.dart';
import 'package:terre_de_fangh/src/ui/responsive/device.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _content(BuildContext context) {
    final device = Device();
    switch (device.device(context)) {
      case Devices.web:
        return const HomeWeb();
      case Devices.androidHandset:
        return const HomeAndroid();
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

  Widget _homeBase(BuildContext context) {
    final device = Device();
    switch (device.device(context)) {
      case Devices.web:
        return BaseWeb(_content(context), background(context, imageWeb, BoxFit.cover));
      case Devices.androidHandset:
        return BaseAndroid(
          _content(context),
          null,
          tabBarAndroid(context, homeTab),
          null,
          needDrawer: true,
        );
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
        return _homeBase(context);
      case Devices.androidHandset:
        return DefaultTabController(length: 3, child: _homeBase(context));
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
