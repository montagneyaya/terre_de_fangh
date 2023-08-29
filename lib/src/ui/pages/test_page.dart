import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:terre_de_fangh/src/ui/components/base/base_android_handset.dart';

import '../../lang/lang.dart';
import '../components/background/background.dart';
import '../components/text/text.dart';
import '../components/text/text_field.dart';
import '../instances/background/background.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseAndroid(
      TestContent(),
      null,
      false,
      null,
      null,
    );
  }
}

class TestContent extends StatefulWidget {
  @override
  _TestContentState createState() => _TestContentState();
}

class _TestContentState extends State<TestContent> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: background(context, imageMain, BoxFit.contain),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height -
                  Scaffold.of(context).appBarMaxHeight! -
                  kToolbarHeight -
                  kBottomNavigationBarHeight,
            ),
            //  child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    terreDeFanghTextBodyMedium(context, Lang.nameCharacter),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: terreDeFanghTextField(context),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // ),
    );
  }
}
