import 'package:myapp/src/ui/mvi/intent.dart';

enum PlayerAction {
  loadCharacters,
  createCharacter,
  selectCharacter,
  loadQuests,
  createQuest,
  selectQuest,
  loadSoloQuests,
  createSoloQuest,
  selectSoloQuest,
}

class PlayerIntent extends MviIntent {

  const PlayerIntent(this.action, [this.payload = const {}]);
  final PlayerAction action;
  final Map<String, dynamic> payload;
}
