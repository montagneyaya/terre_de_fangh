import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/src/data/creatures/player_character/player_character.dart';
import 'package:myapp/src/screens/player/mvi/player_intent.dart';
import 'package:myapp/src/screens/player/mvi/player_view_model.dart';
import 'package:myapp/src/screens/player/tabs/characters_tab.dart';
import 'package:myapp/src/screens/player/tabs/quests_tab.dart';
import 'package:myapp/src/screens/player/tabs/solo_quests_tab.dart';
import 'package:myapp/src/ui/mvi/base_mvi.dart';

class PlayerScreenMVI extends MviView<PlayerViewModel, PlayerIntent> {
  const PlayerScreenMVI({super.key});

  @override
  MviViewState<PlayerViewModel, PlayerIntent> createState() =>
      _PlayerScreenMVIState();
}

class _PlayerScreenMVIState extends MviViewState<PlayerViewModel, PlayerIntent>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  PlayerViewModel createInitialViewModel() => const PlayerViewModel();

  @override
  void init() {
    super.init();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Future<void> handleIntent(PlayerIntent intent) async {
    switch (intent.action) {
      case PlayerAction.loadCharacters:
        await _loadCharacters();
      case PlayerAction.createCharacter:
        await _createCharacter();
      case PlayerAction.selectCharacter:
        final index = intent.payload['index'] as int?;
        if (index != null) {
          _selectCharacter(index);
        }
      case PlayerAction.loadQuests:
        await _loadQuests();
      case PlayerAction.createQuest:
        _createQuest();
      case PlayerAction.selectQuest:
        final questIndex = intent.payload['index'] as int?;
        if (questIndex != null) {
          _selectQuest(questIndex);
        }
      case PlayerAction.loadSoloQuests:
        await _loadSoloQuests();
      case PlayerAction.createSoloQuest:
        _createSoloQuest();
      case PlayerAction.selectSoloQuest:
        final soloQuestIndex = intent.payload['index'] as int?;
        if (soloQuestIndex != null) {
          _selectSoloQuest(soloQuestIndex);
        }
    }
  }

  // TODO(yaya): Move this to a proper repository/service
  final List<PlayerCharacter> _characters = [];

  Future<void> _loadCharacters() async {
    updateViewModel(viewModel.copyWith(isLoading: true, error: null));
    try {
      // In a real app, this would be an API call or database query
      // For now, we'll use the in-memory list
      final characters = List<PlayerCharacter>.from(_characters);
      
      // Simulate network delay
      await Future<void>.delayed(const Duration(milliseconds: 500));
      
      updateViewModel(viewModel.copyWith(
        isLoading: false,
        characters: characters,
      ));
    } on Exception catch (e) {
      updateViewModel(viewModel.copyWith(
        isLoading: false,
        error: 'Failed to load characters: $e',
      ));
    }
  }
  
  // Helper method to add a new character
  void _addCharacter(PlayerCharacter character) {
    _characters.add(character);
  }

  Future<void> _createCharacter() async {
    debugPrint('Navigating to character creation');
    try {
      // Show loading state
      updateViewModel(viewModel.copyWith(isLoading: true));
      
      // Use GoRouter to navigate to the character creation screen
      final result = await context.push('/player/character-creation');
      
      debugPrint('Returned from character creation with result: $result');
      
      if (mounted) {
        if (result != null && result is PlayerCharacter) {
          // Add the new character to our list
          _addCharacter(result);
          // Refresh the characters list
          await _loadCharacters();
          
          // Show success message
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Character created successfully!')),
            );
          }
        } else if (result != null) {
          debugPrint('Unexpected result type: ${result.runtimeType}');
        }
      }
    } on Exception catch (e) {
      debugPrint('Error in character creation: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error creating character: $e')),
        );
      }
    } finally {
      if (mounted) {
        updateViewModel(viewModel.copyWith(isLoading: false));
      }
    }
  }

  Future<void> _loadQuests() async {
    updateViewModel(viewModel.copyWith(isLoadingQuests: true));
    try {
      // Replace with your actual data loading logic
      // final quests = await questRepository.getQuests();
      // updateViewModel(viewModel.copyWith(
      //   isLoadingQuests: false,
      //   quests: quests,
      // ));
      
      // Example with mock data
      await Future<void>.delayed(const Duration(seconds: 1));
      updateViewModel(viewModel.copyWith(
        isLoadingQuests: false,
        quests: [
          {'id': '1', 'name': 'First Quest', 'description': 'A test quest'},
          {'id': '2', 'name': 'Second Quest', 'description': 'Another test quest'},
        ],
      ));
    } on Exception catch (e) {
      updateViewModel(viewModel.copyWith(
        isLoadingQuests: false,
        error: 'Failed to load quests: $e',
      ));
    }
  }

  void _createQuest() {
    // Handle navigation to quest creation
    // Navigator.of(context).pushNamed('/quest-creation');
  }

  void _selectCharacter(int index) {
    // Handle character selection
    // final character = viewModel.characters[index];
    // Navigator.of(context).pushNamed('/character-details', arguments: character);
  }

  void _selectQuest(int index) {
    // Handle quest selection
    // final quest = viewModel.quests[index];
    // Navigator.of(context).pushNamed('/quest-details', arguments: quest);
  }

  void _selectSoloQuest(int index) {
    // Handle solo quest selection
    // final soloQuest = viewModel.soloQuests[index];
    // Navigator.of(context).pushNamed('/solo-quest-details', arguments: soloQuest);
  }

  Future<void> _loadSoloQuests() async {
    updateViewModel(viewModel.copyWith(isLoadingSoloQuests: true));
    try {
      // Replace with your actual data loading logic
      await Future<void>.delayed(const Duration(seconds: 1));
      updateViewModel(viewModel.copyWith(
        isLoadingSoloQuests: false,
        soloQuests: [
          {'id': 's1', 'name': 'Solo Quest 1', 'description': 'Complete 5 tasks', 'progress': '30%'},
          {'id': 's2', 'name': 'Solo Quest 2', 'description': 'Reach level 10', 'progress': '75%'},
        ],
      ));
    } on Exception catch (e) {
      updateViewModel(viewModel.copyWith(
        isLoadingSoloQuests: false,
        error: 'Failed to load solo quests: $e',
      ));
    }
  }

  void _createSoloQuest() {
    // Handle navigation to solo quest creation
    // Navigator.of(context).pushNamed('/solo-quest-creation');
  }

  Future<void> _onTabChanged(int index) async {
    // Update the current tab index
    updateViewModel(viewModel.copyWith(currentTabIndex: index));

    // Load data based on the selected tab
    switch (index) {
      case 0: // Characters tab
        if (viewModel.characters.isEmpty || viewModel.error != null) {
          await handleIntent(const PlayerIntent(PlayerAction.loadCharacters));
        }
      case 1: // Quests tab
        if (viewModel.quests.isEmpty || viewModel.error != null) {
          await handleIntent(const PlayerIntent(PlayerAction.loadQuests));
        }
      case 2: // Solo Quests tab
        if (viewModel.soloQuests.isEmpty || viewModel.error != null) {
          await handleIntent(const PlayerIntent(PlayerAction.loadSoloQuests));
        }
    }
  }

  @override
  Widget buildView(
    BuildContext context,
    PlayerViewModel viewModel,
    void Function(PlayerIntent) onIntent,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player'),
        bottom: TabBar(
          controller: _tabController,
          onTap: _onTabChanged,
          tabs: const [
            Tab(text: 'Characters'),
            Tab(text: 'Quests'),
            Tab(text: 'Solo Quests'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CharacterListTab(
            isLoading: viewModel.isLoading,
            characters: viewModel.characters,
            onCreateCharacter: () => onIntent(
              const PlayerIntent(PlayerAction.createCharacter),
            ),
            onCharacterSelected: (index) => onIntent(
              PlayerIntent(
                PlayerAction.selectCharacter,
                {'index': index},
              ),
            ),
          ),
          QuestsTab(
            isLoading: viewModel.isLoadingQuests,
            quests: viewModel.quests,
            onCreateQuest: () => onIntent(
              const PlayerIntent(PlayerAction.createQuest),
            ),
            onQuestSelected: (index) => onIntent(
              PlayerIntent(
                PlayerAction.selectQuest,
                {'index': index},
              ),
            ),
          ),
          SoloQuestsTab(
            isLoading: viewModel.isLoadingSoloQuests,
            soloQuests: viewModel.soloQuests,
            onCreateSoloQuest: () => onIntent(
              const PlayerIntent(PlayerAction.createSoloQuest),
            ),
            onSoloQuestSelected: (index) => onIntent(
              PlayerIntent(
                PlayerAction.selectSoloQuest,
                {'index': index},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
