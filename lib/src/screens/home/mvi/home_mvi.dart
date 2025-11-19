import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/l10n/app_localizations.dart';
import 'package:myapp/src/screens/home/mvi/home_intent.dart';
import 'package:myapp/src/screens/home/mvi/home_view_model.dart';
import 'package:myapp/src/ui/mvi/base_mvi.dart';

class HomeScreenMVI extends MviView<HomeScreenViewModel, HomeScreenIntent> {
  const HomeScreenMVI({super.key});

  @override
  MviViewState<HomeScreenViewModel, HomeScreenIntent> createState() => _HomeScreenMVIState();
}

class _HomeScreenMVIState extends MviViewState<HomeScreenViewModel, HomeScreenIntent> {
  @override
  HomeScreenViewModel createInitialViewModel() => const HomeScreenViewModel();

  @override
  void handleIntent(HomeScreenIntent intent) {
    switch (intent.action) {
      case HomeScreenAction.navigateToPlayer:
        context.go('/player');
      case HomeScreenAction.navigateToGameMaster:
        context.go('/gm');
    }
  }

  @override
  Widget buildView(
      BuildContext context,
      HomeScreenViewModel viewModel,
      void Function(HomeScreenIntent) onIntent,
      ) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => onIntent(const HomeScreenIntent(HomeScreenAction.navigateToPlayer)),
              child: const Text('Player'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => onIntent(const HomeScreenIntent(HomeScreenAction.navigateToGameMaster)),
              child: const Text('Game Master'),
            ),
          ],
        ),
      ),
    );
  }
}
