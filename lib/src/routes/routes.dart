part of 'package:terre_de_fangh/src/app.dart';

final _router = GoRouter(
  initialLocation: RoutesPath.home,
  routes: [
    GoRoute(
      name: RoutesPath.root,
      path: RoutesPath.root,
      redirect: (context, state) => RoutesPath.home,
    ),
    GoRoute(
      name: RoutesPath.home,
      path: RoutesPath.home,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          name: RoutesPath.characterSheet,
          path: RoutesPath.characterSheet,
          redirect: (context, state) => RoutesPath.characterSheetMain,
        ),
        GoRoute(
          name: RoutesPath.characterSheetMain,
          path: RoutesPath.characterSheetMain,
          builder: (context, state) => const CharacterSheetPage(),
          routes: [
            GoRoute(
              name: RoutesPath.characterSheetFight,
              path: RoutesPath.characterSheetFight,
              builder: (context, state) => const CharacterSheetFightPage(),
            ),
            GoRoute(
              name: RoutesPath.characterSheetItems,
              path: RoutesPath.characterSheetItems,
              builder: (context, state) => const CharacterSheetItemsPage(),
            ),
            GoRoute(
              name: RoutesPath.characterSheetBackPack,
              path: RoutesPath.characterSheetBackPack,
              builder: (context, state) => const CharacterSheetBackPackPage(),
            ),
            GoRoute(
              name: RoutesPath.characterSheetPurse,
              path: RoutesPath.characterSheetPurse,
              builder: (context, state) => const CharacterSheetPursePage(),
            ),
          ],
        ),
        GoRoute(
          name: RoutesPath.createCharacter,
          path: RoutesPath.createCharacter,
          builder: (context, state) => const CreateCharacterPage(),
        ),
      ],
    ),
    GoRoute(
      name: RoutesPath.setting,
      path: RoutesPath.setting,
      builder: (context, sate) => const SettingPage(),
    ),
  ],
);
