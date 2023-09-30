part of 'package:terre_de_fangh/src/app.dart';

final _router = GoRouter(
  initialLocation: RoutesPath.home,
  routes: [
    GoRoute(
      path: RoutesPath.root,
      redirect: (context, state) => RoutesPath.home,
    ),
    GoRoute(
      path: RoutesPath.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RoutesPath.characterSheet,
      redirect: (context, state) => RoutesPath.characterSheetMain,
    ),
    GoRoute(
      path: RoutesPath.characterSheetMain,
      builder: (context, state) => const CharacterSheetPage(),
    ),
    GoRoute(
      path: RoutesPath.characterSheetFight,
      builder: (context, state) => const CharacterSheetFightPage(),
    ),
    GoRoute(
      path: RoutesPath.characterSheetItems,
      builder: (context, state) => const CharacterSheetItemsPage(),
    ),
    GoRoute(
      path: RoutesPath.characterSheetBackPack,
      builder: (context, state) => const CharacterSheetBackPackPage(),
    ),
    GoRoute(
      path: RoutesPath.characterSheetPurse,
      builder: (context, state) => const CharacterSheetPursePage(),
    ),
    GoRoute(
      path: RoutesPath.createCharacter,
      builder: (context, state) => const CreateCharacterPage(),
    ),
    GoRoute(
      path: RoutesPath.setting,
      builder: (context, sate) => const SettingPage(),
    ),
    GoRoute(
      path: '/test',
      builder: (context, state) => const TestPage(),
    )
  ],
);
