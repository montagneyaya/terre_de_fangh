import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Device {
  Devices? device(BuildContext context) {
    final targetPlatform = Theme.of(context).platform;
    final dimension = MediaQuery.of(context).size.shortestSide;
    if (kIsWeb) return Devices.web;
    if (targetPlatform == TargetPlatform.android && dimension < 720) return Devices.androidHandset;
    if (targetPlatform == TargetPlatform.android && dimension >= 720) return Devices.androidTablet;
    if (targetPlatform == TargetPlatform.iOS && dimension < 720) return Devices.iOSHandset;
    if (targetPlatform == TargetPlatform.iOS && dimension >= 720) return Devices.iOSTablet;
    if (targetPlatform == TargetPlatform.windows) return Devices.windows;
    if (targetPlatform == TargetPlatform.linux) return Devices.linux;
    if (targetPlatform == TargetPlatform.macOS) return Devices.macOS;
    if (targetPlatform == TargetPlatform.fuchsia) return Devices.fuchsia;
    return Devices.web;
  }
}

enum Devices {
  web,
  androidHandset,
  androidTablet,
  iOSHandset,
  iOSTablet,
  windows,
  linux,
  macOS,
  fuchsia
}
