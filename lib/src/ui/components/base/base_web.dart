import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/responsive/breakpoint.dart';
import 'package:terre_de_fangh/src/ui/responsive/device.dart';
import 'package:terre_de_fangh/src/ui/instances/app_bar/app_bar_web.dart';
import 'package:terre_de_fangh/src/ui/components/drawer/drawer.dart';

class BaseWeb extends StatelessWidget {
  final Widget content;
  final BoxDecoration backgroundContent;

  BaseWeb(this.content, this.backgroundContent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: buildNavigation(context),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: backgroundContent,
          child: Column(
            children: [
              Image(image: _imageHeader(context)),
              appBarWeb(context),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: this.content,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ImageProvider<Object> _imageHeader(context) {
    final Device device = Device();
    final Breakpoint breakpoint = Breakpoint();
    if (device.device(context) == Devices.web) {
      switch (breakpoint.breakpoint(context)) {
        case Breakpoints.xsmall:
          return AssetImage('assets/images/decor/web/banner-xs.webp');
        case Breakpoints.small:
          return AssetImage('assets/images/decor/web/banner-s.webp');
        case Breakpoints.medium:
          return AssetImage('assets/images/decor/web/banner-m.webp');
        case Breakpoints.large:
          return AssetImage('assets/images/decor/web/banner-l.webp');
        case Breakpoints.xlarge:
          return AssetImage('assets/images/decor/web/banner-xl.webp');
        case null:
          return AssetImage('assets/images/decor/web/banner-l.webp');
      }
    } else
      return AssetImage('assets/images/decor/web/banner-l.webp');
  }
}
