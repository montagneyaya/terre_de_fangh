import 'package:flutter/material.dart';

Widget terreDeFanghTextField(BuildContext context) {
  return TextField(
    style:
        Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSurface),
  );
}
