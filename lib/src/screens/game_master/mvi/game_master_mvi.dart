import 'package:flutter/material.dart';
import 'package:myapp/src/screens/game_master/mvi/game_master_intent.dart';
import 'package:myapp/src/screens/game_master/mvi/game_master_view_model.dart';
import 'package:myapp/src/ui/mvi/base_mvi.dart';

class GameMasterScreenMVI extends MviView<GameMasterViewModel, GameMasterIntent> {
  const GameMasterScreenMVI({super.key});

  @override
  MviViewState<GameMasterViewModel, GameMasterIntent> createState() => _GameMasterScreenMVIState();
}

class _GameMasterScreenMVIState extends MviViewState<GameMasterViewModel, GameMasterIntent> {
  @override
  GameMasterViewModel createInitialViewModel() => const GameMasterViewModel();

  @override
  void handleIntent(GameMasterIntent intent) {
    switch (intent.action) {
      case GameMasterAction.loadData:
      // Handle data loading
        break;
    // Handle other actions
    }
  }

  @override
  Widget buildView(
      BuildContext context,
      GameMasterViewModel viewModel,
      void Function(GameMasterIntent) onIntent,
      ) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Master')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (viewModel.isLoading)
              const CircularProgressIndicator()
            else if (viewModel.error != null)
              Text('Error: ${viewModel.error}')
            else
              const Text('Game Master Screen'),
            // Add your game master UI components here
          ],
        ),
      ),
    );
  }
}
