import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/components/background/background.dart';
import 'package:terre_de_fangh/src/ui/components/base/base_android_handset.dart';
import 'package:terre_de_fangh/src/ui/components/base/base_web.dart';
import 'package:terre_de_fangh/src/ui/instances/background/background.dart';
import 'package:terre_de_fangh/src/ui/pages/setting/setting_android.dart';
import 'package:terre_de_fangh/src/ui/responsive/device.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  Widget _content(BuildContext context) {
    final device = Device();
    switch (device.device(context)) {
      case Devices.web:
        // TODO(web): Handle this case.
        break;
      case Devices.androidHandset:
        return const SettingAndroid();
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

  Widget _settingBase(BuildContext context) {
    final device = Device();
    switch (device.device(context)) {
      case Devices.web:
        return BaseWeb(_content(context), background(context, imageWeb, BoxFit.cover));
      case Devices.androidHandset:
        return BaseAndroid(_content(context), null, null, null, needDrawer: true,);
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
        return _settingBase(context);
      case Devices.androidHandset:
        return _settingBase(context);
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
