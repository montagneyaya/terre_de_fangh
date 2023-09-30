import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/Assets/images.dart';
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
          return const AssetImage(AssetsImages.bannerXS);
        case Breakpoints.small:
          return const AssetImage(AssetsImages.bannerS);
        case Breakpoints.medium:
          return const AssetImage(AssetsImages.bannerM);
        case Breakpoints.large:
          return const AssetImage(AssetsImages.bannerL);
        case Breakpoints.xlarge:
          return const AssetImage(AssetsImages.bannerXL);
        case null:
          return const AssetImage(AssetsImages.bannerL);
      }
    } else {
      return const AssetImage(AssetsImages.bannerL);
    }
  }
}
