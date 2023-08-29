part of 'package:terre_de_fangh/src/app.dart';

final _router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/',
      redirect: (context, state) => '/home',
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/character-sheet',
      redirect: (context, state) => '/character-sheet/main',
    ),
    GoRoute(
      path: '/character-sheet/main',
      builder: (context, state) => CharacterSheetPage(),
    ),
    GoRoute(
      path: '/character-sheet/fight',
      builder: (context, state) => CharacterSheetFightPage(),
    ),
    GoRoute(
      path: '/character-sheet/items',
      builder: (context, state) => CharacterSheetItemsPage(),
    ),
    GoRoute(
      path: '/character-sheet/backpack',
      builder: (context, state) => CharacterSheetBackPackPage(),
    ),
    GoRoute(
      path: '/character-sheet/purse',
      builder: (context, state) => CharacterSheetPursePage(),
    ),
    GoRoute(
      path: '/create-character',
      builder: (context, state) => CreateCharacterPage(),
    ),
    GoRoute(
      path: '/setting',
      builder: (context, sate) => SettingPage(),
    ),
    GoRoute(
      path: '/test',
      builder: (context, state) => TestPage(),
    )
  ],
);
