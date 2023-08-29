import 'package:flutter/material.dart';

Text terreDeFanghTextBodyMedium(BuildContext context, String text) {
  return Text(
    text,
    style:
        Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface),
  );
}
