import 'package:myapp/src/ui/mvi/intent.dart';

enum GameMasterAction {
  // Add your game master actions here
  // Example: loadCampaigns, createCampaign, etc.
  loadData,
}

class GameMasterIntent extends MviIntent {

  const GameMasterIntent(this.action, [this.payload]);
  final GameMasterAction action;
  final dynamic payload;
}
