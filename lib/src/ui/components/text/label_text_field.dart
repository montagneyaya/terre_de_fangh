import 'package:flutter/material.dart';
import 'package:terre_de_fangh/src/ui/components/text/text.dart';
import 'package:terre_de_fangh/src/ui/components/text/text_field.dart';

Widget terreDeFanghLabelTextField(BuildContext context, String label) {
  return Row(
    textBaseline: TextBaseline.alphabetic,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    children: [
      terreDeFanghTextBodyMedium(context, label),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: terreDeFanghTextField(context),
        ),
      ),
    ],
  );
}
