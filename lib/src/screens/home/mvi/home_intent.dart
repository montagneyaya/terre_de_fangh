import 'package:myapp/src/ui/mvi/intent.dart';

enum HomeScreenAction {
  navigateToPlayer,
  navigateToGameMaster,
}

class HomeScreenIntent extends MviIntent {

  const HomeScreenIntent(this.action);
  final HomeScreenAction action;
}
