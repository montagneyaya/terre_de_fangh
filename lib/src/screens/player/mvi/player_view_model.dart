import 'package:myapp/src/data/creatures/player_character/player_character.dart';
import 'package:myapp/src/ui/mvi/base_mvi.dart';

class PlayerViewModel extends MviViewModel {
  const PlayerViewModel({
    this.isLoading = false,
    this.currentTabIndex = 0,
    this.error,
    this.characters = const [],
    this.quests = const [],
    this.soloQuests = const [],
    this.isLoadingQuests = false,
    this.isLoadingSoloQuests = false,
  });

  final bool isLoading;
  final int currentTabIndex;
  final String? error;
  final List<PlayerCharacter> characters;
  final List<Map<String, dynamic>> quests;
  final List<Map<String, dynamic>> soloQuests;
  final bool isLoadingQuests;
  final bool isLoadingSoloQuests;

  PlayerViewModel copyWith({
    bool? isLoading,
    int? currentTabIndex,
    String? error,
    List<PlayerCharacter>? characters,
    List<Map<String, dynamic>>? quests,
    List<Map<String, dynamic>>? soloQuests,
    bool? isLoadingQuests,
    bool? isLoadingSoloQuests,
  }) {
    return PlayerViewModel(
      isLoading: isLoading ?? this.isLoading,
      currentTabIndex: currentTabIndex ?? this.currentTabIndex,
      error: error ?? this.error,
      characters: characters ?? this.characters,
      quests: quests ?? this.quests,
      soloQuests: soloQuests ?? this.soloQuests,
      isLoadingQuests: isLoadingQuests ?? this.isLoadingQuests,
      isLoadingSoloQuests: isLoadingSoloQuests ?? this.isLoadingSoloQuests,
    );
  }
}
