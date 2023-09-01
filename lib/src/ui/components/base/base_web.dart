import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/responsive/breakpoint.dart';
import 'package:terre_de_fangh/src/ui/responsive/device.dart';
import 'package:terre_de_fangh/src/ui/instances/app_bar/app_bar_web.dart';
import 'package:terre_de_fangh/src/ui/components/drawer/drawer.dart';

class BaseWeb extends StatelessWidget {
  final Widget content;
  final BoxDecoration backgroundContent;

  const BaseWeb(this.content, this.backgroundContent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: buildNavigation(context),
      body: Center(
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: backgroundContent,
          child: Column(
            children: [
              Image(image: _imageHeader(context)),
              appBarWeb(context),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: content,
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
          return const AssetImage('assets/images/decor/web/banner-xs.webp');
        case Breakpoints.small:
          return const AssetImage('assets/images/decor/web/banner-s.webp');
        case Breakpoints.medium:
          return const AssetImage('assets/images/decor/web/banner-m.webp');
        case Breakpoints.large:
          return const AssetImage('assets/images/decor/web/banner-l.webp');
        case Breakpoints.xlarge:
          return const AssetImage('assets/images/decor/web/banner-xl.webp');
        case null:
          return const AssetImage('assets/images/decor/web/banner-l.webp');
      }
    } else {
      return const AssetImage('assets/images/decor/web/banner-l.webp');
    }
  }
}
