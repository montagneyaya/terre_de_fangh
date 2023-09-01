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
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/character-sheet',
      redirect: (context, state) => '/character-sheet/main',
    ),
    GoRoute(
      path: '/character-sheet/main',
      builder: (context, state) => const CharacterSheetPage(),
    ),
    GoRoute(
      path: '/character-sheet/fight',
      builder: (context, state) => const CharacterSheetFightPage(),
    ),
    GoRoute(
      path: '/character-sheet/items',
      builder: (context, state) => const CharacterSheetItemsPage(),
    ),
    GoRoute(
      path: '/character-sheet/backpack',
      builder: (context, state) => const CharacterSheetBackPackPage(),
    ),
    GoRoute(
      path: '/character-sheet/purse',
      builder: (context, state) => const CharacterSheetPursePage(),
    ),
    GoRoute(
      path: '/create-character',
      builder: (context, state) => const CreateCharacterPage(),
    ),
    GoRoute(
      path: '/setting',
      builder: (context, sate) => const SettingPage(),
    ),
    GoRoute(
      path: '/test',
      builder: (context, state) => const TestPage(),
    )
  ],
);
