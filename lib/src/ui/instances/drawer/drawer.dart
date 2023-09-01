import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/lang.dart';

Widget menuApp(BuildContext context) {
  return ListView(
    children: [
      ListTile(
        leading: Icon(
          Icons.home_outlined,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        title: Text(
          Lang.home,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
        onTap: () {
          context.go('/home');
        },
      ),
      ListTile(
        leading: Icon(
          Icons.settings_outlined,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        title: Text(
          Lang.parameters,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
        onTap: () {
          context.go('/setting');
        },
      ),
    ],
  );
}
