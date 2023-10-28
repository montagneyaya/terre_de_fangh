import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/components/drawer/drawer.dart';
import 'package:terre_de_fangh/src/ui/instances/app_bar/app_bar_android.dart';

class BaseAndroid extends StatelessWidget {

  const BaseAndroid(
      this.content, this.backgroundContent, this.bottomAndroid, this.navigationBar,
      {this.needDrawer = false, super.key,});
  final Widget content;
  final BoxDecoration? backgroundContent;
  final bool needDrawer;
  final TabBar? bottomAndroid;
  final NavigationBar? navigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: needDrawer ? buildNavigation(context) : null,
      appBar: appBarAndroid(context, bottomAndroid!),
      bottomNavigationBar: navigationBar,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            constraints: const BoxConstraints.expand(),
            decoration: backgroundContent,
            child: content,
          ),
        ),
      ),
    );
  }
}
