/// Application routing configuration using GoRouter.
/// 
/// This file defines all the routes and navigation paths for the application.
/// It uses the GoRouter package for declarative routing.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/src/screens/character_creation/character_creation_screen.dart';
import 'package:myapp/src/screens/game_master/game_master_screen.dart';
import 'package:myapp/src/screens/home/home_screen.dart';
import 'package:myapp/src/screens/player/player_screen.dart';

/// The main router configuration for the application.
/// 
/// Defines all the routes and their corresponding screens.
/// Routes are organized hierarchically where child routes are nested within parent routes.
/// 
/// Available routes:
/// - `/`: Home screen
/// - `/player`: Player dashboard
///   - `/player/character-creation`: Character creation flow
/// - `/gm`: Game Master interface
final router = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Error: ${state.error}'),
    ),
  ),
  routes: <RouteBase>[
    // Home route - the initial route of the application
    GoRoute(
      path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    
    // Player section routes
    GoRoute(
      path: '/player',
      name: 'player',
      builder: (context, state) => const PlayerScreen(),
      routes: [
        // Nested route for character creation
        GoRoute(
          name: 'character_creation',
          path: 'character-creation',
          builder: (context, state) => const CharacterCreationScreen(),
        ),
      ],
    ),
    
    // Game Master section route
    GoRoute(
      path: '/gm',
      name: 'game_master',
      builder: (context, state) => const GameMasterScreen(),
    ),
  ],
);
