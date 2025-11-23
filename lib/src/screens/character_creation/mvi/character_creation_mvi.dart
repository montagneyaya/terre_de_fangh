import 'package:flutter/material.dart';
import 'package:myapp/src/data/creatures/creatures.dart';
import 'package:myapp/src/data/creatures/player_character/job.dart';
import 'package:myapp/src/data/creatures/player_character/people.dart';
import 'package:myapp/src/data/creatures/player_character/player_character.dart';
import 'package:myapp/src/data/creatures/player_character/skill.dart';
import 'package:myapp/src/data/creatures/player_character/specialization.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_intent.dart';
import 'package:myapp/src/screens/character_creation/mvi/character_creation_view_model.dart';
import 'package:myapp/src/screens/character_creation/steps/step1_statistics.dart';
import 'package:myapp/src/screens/character_creation/steps/step2_character.dart';
import 'package:myapp/src/screens/character_creation/steps/step3_skills.dart';
import 'package:myapp/src/screens/character_creation/steps/step4_modifiers.dart';
import 'package:myapp/src/screens/character_creation/steps/step5_finalizing.dart';
import 'package:myapp/src/ui/mvi/base_mvi.dart';

class CharacterCreationScreenMVI extends MviView<CharacterCreationViewModel, CharacterCreationIntent> {
  const CharacterCreationScreenMVI({super.key});

  @override
  MviViewState<CharacterCreationViewModel, CharacterCreationIntent> createState() =>
      _CharacterCreationScreenMVIState();
}

class _CharacterCreationScreenMVIState
    extends MviViewState<CharacterCreationViewModel, CharacterCreationIntent> {
  @override
  CharacterCreationViewModel createInitialViewModel() => const CharacterCreationViewModel(
        characterName: '',
        step: CharacterCreationStep.statistics,
        statistics: {
          'courage': 8,
          'intellect': 8,
          'charisma': 8,
          'dexterity': 8,
          'strength': 8,
        },
        skills: {},
        modifiers: {},
      );

  @override
  Future<void> handleIntent(CharacterCreationIntent intent) async {
    switch (intent.action) {
      case CharacterCreationAction.start:
        _handleStart();
      case CharacterCreationAction.goToNextStep:
        _handleNextStep();
      case CharacterCreationAction.goToPreviousStep:
        _handlePreviousStep();
      case CharacterCreationAction.updateStatistics:
        // The payload is now type-safe due to the factory constructor
        final stats = Map<String, int>.from(intent.payload['statistics'] as Map);
        _handleUpdateStatistics(stats);
      case CharacterCreationAction.selectPeople:
        _handleSelectPeople(intent.payload['people'] as People?);
      case CharacterCreationAction.selectJob:
        _handleSelectJob(intent.payload['job'] as Job?);
      case CharacterCreationAction.selectSpecialization:
        _handleSelectSpecialization(intent.payload['specialization'] as Specialization?);
      case CharacterCreationAction.updateSkills:
        final skills = Map<Skill, int>.from(intent.payload['skills'] as Map<dynamic, dynamic>);
        _handleUpdateSkills(skills);
      case CharacterCreationAction.updateModifiers:
        final modifiers = Map<String, dynamic>.from(intent.payload['modifiers'] as Map);
        _handleUpdateModifiers(modifiers);
      case CharacterCreationAction.finalizeCharacter:
        await _handleFinalizeCharacter();
      case CharacterCreationAction.updateCharacter:
        final updates = Map<String, dynamic>.from(intent.payload['updates'] as Map);
        _handleUpdateCharacter(updates);
      case CharacterCreationAction.resetCharacterStats:
        _handleResetCharacterStats();
      case CharacterCreationAction.selectRangerSourceAttribute:
        final attribute = intent.payload['attribute'] as String;
        _handleSelectRangerSourceAttribute(attribute);
      case CharacterCreationAction.selectRangerTargetAttribute:
        final attribute = intent.payload['attribute'] as String;
        _handleSelectRangerTargetAttribute(attribute);
      case CharacterCreationAction.resetRangerModifier:
        _handleResetRangerModifier();
    }
  }

  void _handleStart() {
    // Initialize character creation
    updateViewModel(createInitialViewModel());
  }

  void _handleNextStep() {
    final currentStep = viewModel.step;

    // If we're on the statistics step, validate the stats
    if (currentStep == CharacterCreationStep.statistics) {
      if (!viewModel.areStatisticsValid) {
        // Show error message in the view model
        updateViewModel(viewModel.copyWith(
          error: 'All statistics must be between 8 and 20',
        ));
        return; // Don't proceed to next step
      }
    }

    // If we passed validation or it's not the statistics step, proceed
    if (currentStep.index < CharacterCreationStep.values.length - 1) {
      updateViewModel(
        viewModel.copyWith(
          step: CharacterCreationStep.values[currentStep.index + 1],
          error: null, // Clear any previous errors
        ),
      );
    }
  }

  void _handlePreviousStep() {
    final currentStep = viewModel.step;
    if (currentStep.index > 0) {
      updateViewModel(
        viewModel.copyWith(
          step: CharacterCreationStep.values[currentStep.index - 1],
        ),
      );
    }
  }

  void _handleUpdateStatistics(Map<String, int> statistics) {
    updateViewModel(viewModel.copyWith(statistics: statistics));
  }

  void _handleSelectPeople(People? people) {
    updateViewModel(viewModel.copyWith(selectedPeople: people));
  }

  void _handleSelectJob(Job? job) {
    updateViewModel(viewModel.copyWith(selectedJob: job));
  }

  void _handleSelectSpecialization(Specialization? specialization) {
    updateViewModel(viewModel.copyWith(selectedSpecialization: specialization));
  }

  void _handleUpdateSkills(Map<Skill, int> skills) {
    updateViewModel(viewModel.copyWith(skills: skills));
  }

  void _handleUpdateModifiers(Map<String, dynamic> modifiers) {
    updateViewModel(viewModel.copyWith(modifiers: modifiers));
  }

  void _handleUpdateCharacter(Map<String, dynamic> updates) {
    // Update the view model with the provided character updates
    updateViewModel(viewModel.copyWith(
      // Add any specific updates from the updates map
      // For example: someField: updates['someField'],
    ));
  }

  void _handleResetCharacterStats() {
    // Reset character stats to their initial values
    updateViewModel(viewModel.copyWith(
      statistics: const {},
      // Add any other fields that need to be reset
    ));
  }

  void _handleSelectRangerSourceAttribute(String attribute) {
    // Update the ranger source attribute in the view model
    updateViewModel(viewModel.copyWith(
      // Add rangerSourceAttribute to your view model if not already present
      // rangerSourceAttribute: attribute,
    ));
  }

  void _handleSelectRangerTargetAttribute(String attribute) {
    // Update the ranger target attribute in the view model
    updateViewModel(viewModel.copyWith(
      // Add rangerTargetAttribute to your view model if not already present
      // rangerTargetAttribute: attribute,
    ));
  }

  void _handleResetRangerModifier() {
    // Reset the ranger modifier in the view model
    updateViewModel(viewModel.copyWith(
      // Reset any ranger-related attributes
      // rangerSourceAttribute: null,
      // rangerTargetAttribute: null,
    ));
  }

  Future<void> _handleFinalizeCharacter() async {
    debugPrint('Starting character finalization');
    if (!mounted) {
      debugPrint('Not mounted, aborting');
      return;
    }

    updateViewModel(viewModel.copyWith(isLoading: true));
    
    try {
      debugPrint('Creating character with name: ${viewModel.characterName}');
      // Create the character using the view model data
      final character = PlayerCharacter(
        creature: Creatures(
          name: viewModel.characterName,
          people: viewModel.selectedPeople ?? People.human,
          // Initialize other required Creatures fields with default values
          healthPoints: 0,
          astralPoints: 0,
          experience: 0,
          attack: 0,
          throwAttack: 0,
          parry: 0,
          evade: 0,
          spellResistance: 0,
          courage: 0,
          naturalPR: 0,
          magicPR: 0,
          weapons: [],
          armors: [],
          actualHealthPoints: 0,
          actualAstralPoints: 0,
        ),
        job: viewModel.selectedJob ?? Job.none,
        specialization: viewModel.selectedSpecialization ?? Specialization.none,
        // Initialize other required PlayerCharacter fields with default values
        gender: '',
        fatePoints: 0,
        level: 1,
        currentLoad: 0,
        maxLoad: 0,
        intellect: 0,
        charisma: 0,
        dexterity: 0,
        strength: 0,
        physicalSpell: 0,
      );

      // Save the character (implement your character service/repository)
      // await characterService.saveCharacter(character);

      // Navigate back to the previous screen
      if (mounted) {
        Navigator.of(context).pop(character); // Return the created character
      }
    } on Exception catch (e) {
    debugPrint('Error creating character: $e');
      // Show error to the user
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to create character: $e')),
        );
      }
      updateViewModel(viewModel.copyWith(error: e.toString()));
    } finally {
      if (mounted) {
        updateViewModel(viewModel.copyWith(isLoading: false));
      }
    }
  }

  @override
  Widget buildView(
      BuildContext context,
      CharacterCreationViewModel viewModel,
      void Function(CharacterCreationIntent) onIntent,
      ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Creation'),
      ),
      body: Column(
        children: [
          // Step indicator
          LinearProgressIndicator(
            value: (viewModel.step.index + 1) / CharacterCreationStep.values.length,
          ),
          const SizedBox(height: 16),
          // Current step content
          Expanded(
            child: IndexedStack(
              index: viewModel.step.index,
              children: [
                // Step 1: Statistics
                Step1Statistics(
                  viewModel: viewModel,
                  onIntent: onIntent,
                ),
                // Step 2: Character
                Step2Character(
                  selectedPeople: viewModel.selectedPeople,
                  availablePeople: People.peoples,
                  onPeopleChanged: (people) => onIntent(CharacterCreationIntent.selectPeople(people)),
                  selectedJob: viewModel.selectedJob,
                  availableJobs: viewModel.selectedPeople?.jobs ?? Job.jobs,
                  onJobChanged: (job) => onIntent(CharacterCreationIntent.selectJob(job)),
                  selectedSpecialization: viewModel.selectedSpecialization,
                  onSpecializationChanged: (spec) => onIntent(CharacterCreationIntent.selectSpecialization(spec)),
                ),
                // Step 3: Skills
                Step3Skills(
                  acquiredSkills: viewModel.skills.entries
                      .where((entry) => entry.value > 0)
                      .map((entry) => entry.key)
                      .toList(),
                  optionalSkills: viewModel.selectedJob?.optionalSkills ?? [],
                  selectedOptionalSkills: viewModel.skills.entries
                      .where((entry) => entry.value == 0 &&
                          (viewModel.selectedJob?.optionalSkills.contains(entry.key) ?? false))
                      .map((entry) => entry.key)
                      .toSet(),
                  optionalSkillPoints: 2, // Default value, adjust as needed
                  onAddOptionalSkill: (skill) {
                    // Handle adding optional skill
                    final newSkills = Map<Skill, int>.from(viewModel.skills);
                    newSkills[skill] = 0;
                    onIntent(CharacterCreationIntent.updateSkills(newSkills));
                  },
                  onRemoveOptionalSkill: (skill) {
                    // Handle removing optional skill
                    final newSkills = Map<Skill, int>.from(viewModel.skills)
                    ..remove(skill);
                    onIntent(CharacterCreationIntent.updateSkills(newSkills));
                  },
                  isHumanAny: viewModel.selectedPeople?.name == 'Human',
                ),
                // Step 4: Modifiers
                Step4Modifiers(
                  people: viewModel.selectedPeople ?? People.human,
                  job: viewModel.selectedJob ?? Job.none,
                  dexterity: viewModel.statistics['dexterity'] ?? 0,
                  rangerSourceAttribute: '',
                  rangerTargetAttribute: '',
                  hasActiveRangerExchange: false,
                  isRangerExchangeComplete: false,
                  onUpdateCharacter: (updates) {
                    // Handle character updates
                  },
                  onResetCharacterStats: () {
                    // Handle reset character stats
                  },
                  onSelectRangerSourceAttribute: (attribute) {
                    // Handle ranger source attribute selection
                  },
                  onSelectRangerTargetAttribute: (attribute) {
                    // Handle ranger target attribute selection
                  },
                  onResetRangerModifier: () {
                    // Handle ranger modifier reset
                  },
                ),
                // Step 5: Finalizing
                Step5Finalizing(
                  viewModel: viewModel,
                  onIntent: onIntent,
                ),
                // Step 5: Finalizing
              ],
            ),
          ),
          // Navigation buttons
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (viewModel.step.index > 0)
                  ElevatedButton(
                    onPressed: () => onIntent(CharacterCreationIntent.goToPreviousStep()),
                    child: const Text('Previous'),
                  )
                else
                  const SizedBox(width: 100),
                if (viewModel.step.index < CharacterCreationStep.values.length - 1)
                  ElevatedButton(
                    onPressed: viewModel.step == CharacterCreationStep.statistics &&
                        !viewModel.areStatisticsValid
                        ? null
                        : () => onIntent(CharacterCreationIntent.goToNextStep()),
                    child: const Text('Next'),
                  )
                else
                  ElevatedButton(
                    onPressed: viewModel.isLoading
                        ? null
                        : () {
                      debugPrint('Finalizing character creation');
                      onIntent(CharacterCreationIntent.finalizeCharacter());
                    },
                    child: viewModel.isLoading
                        ? const CircularProgressIndicator()
                        : const Text('Create Character'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
