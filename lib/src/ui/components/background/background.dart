import 'package:flutter/material.dart';

BoxDecoration background(
    BuildContext context, ImageProvider<Object> backgroundImage, BoxFit backgroundFit) {
  return BoxDecoration(
    color: Theme.of(context).colorScheme.surface,
    image: DecorationImage(
      colorFilter:
          ColorFilter.mode(Theme.of(context).colorScheme.surface.withOpacity(0.12), BlendMode.dstATop),
      image: backgroundImage,
      fit: backgroundFit,
    ),
  );
}
