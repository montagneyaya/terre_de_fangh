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

class CharacterCreationScreenMVI
    extends MviView<CharacterCreationViewModel, CharacterCreationIntent> {
  const CharacterCreationScreenMVI({super.key});

  @override
  MviViewState<CharacterCreationViewModel, CharacterCreationIntent>
  createState() => _CharacterCreationScreenMVIState();
}

class _CharacterCreationScreenMVIState
    extends MviViewState<CharacterCreationViewModel, CharacterCreationIntent> {
  @override
  CharacterCreationViewModel createInitialViewModel() =>
      const CharacterCreationViewModel(
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
        final stats = Map<String, int>.from(
          intent.payload['statistics'] as Map,
        );
        _handleUpdateStatistics(stats);
      case CharacterCreationAction.selectPeople:
        _handleSelectPeople(intent.payload['people'] as People?);
      case CharacterCreationAction.selectJob:
        _handleSelectJob(intent.payload['job'] as Job?);
      case CharacterCreationAction.selectSpecialization:
        _handleSelectSpecialization(
          intent.payload['specialization'] as Specialization?,
        );
      case CharacterCreationAction.updateSkills:
        final skills = Map<Skill, int>.from(
          intent.payload['skills'] as Map<dynamic, dynamic>,
        );
        _handleUpdateSkills(skills);
      case CharacterCreationAction.updateModifiers:
        final modifiers = Map<String, dynamic>.from(
          intent.payload['modifiers'] as Map,
        );
        _handleUpdateModifiers(modifiers);
      case CharacterCreationAction.finalizeCharacter:
        await _handleFinalizeCharacter();
      case CharacterCreationAction.updateCharacter:
        final updates = Map<String, dynamic>.from(
          intent.payload['updates'] as Map,
        );
        _handleUpdateCharacter(updates);
      case CharacterCreationAction.resetCharacterStats:
        _handleResetCharacterStats();
      case CharacterCreationAction.updateOgreModifiers:
        _handleUpdateOgreModifiers(
          attackModifier: intent.payload['ogreAttackModifier'] as int,
          parryModifier: intent.payload['ogreParryModifier'] as int,
        );
      case CharacterCreationAction.updateFighterModifiers:
        _handleUpdateFighterModifiers(
          attackChange: intent.payload['fighterAttackChange'] as int,
          parryChange: intent.payload['fighterParryChange'] as int,
        );
      case CharacterCreationAction.updateDealerModifiers:
        _handleUpdateDealerModifiers(
          statistics: Map<String, int>.from(
            intent.payload['statistics'] as Map,
          ),
          transferBegin: intent.payload['transferBegin'] as bool? ?? false,
          transferFinish: intent.payload['transferFinish'] as bool? ?? false,
          originalStats: intent.payload['originalStats'] != null
              ? Map<String, int>.from(
                  intent.payload['originalStats'] as Map,
                )
              : null,
        );

      case CharacterCreationAction.resetDealerModifier:
        _handleResetDealerModifier();
      case CharacterCreationAction.updateEngineerModifiers:
        _handleUpdateEngineerModifiers(
          statistics: intent.payload['statistics'] as Map<String, int>,
          transferBegin: intent.payload['transferBegin'] as bool? ?? false,
          transferFinish: intent.payload['transferFinish'] as bool? ?? false,
          originalStats: intent.payload['originalStats'] as Map<String, int>?,
        );

      case CharacterCreationAction.updateEngineerAttribute:
        _handleUpdateEngineerAttribute(intent);

      case CharacterCreationAction.selectEngineerSource:
        final attribute = intent.payload['attribute'] as String?;
        final updatedModifiers = Map<String, dynamic>.from(viewModel.modifiers);
        updatedModifiers['engineerSource'] = attribute;
        updateViewModel(viewModel.copyWith(modifiers: updatedModifiers));

      case CharacterCreationAction.selectEngineerTarget:
        final currentStats = Map<String, int>.from(viewModel.statistics);
        final attribute = intent.payload['attribute'] as String?;
        if (attribute != null && viewModel.engineerSource != null) {
          // Move a point from source to target
          currentStats[viewModel.engineerSource!] =
              (currentStats[viewModel.engineerSource] ?? 0) - 1;
          currentStats[attribute] = (currentStats[attribute] ?? 0) + 1;
          _handleUpdateEngineerModifiers(
            statistics: currentStats,
          );
        }
        // Update the target in modifiers
        final updatedModifiers = Map<String, dynamic>.from(viewModel.modifiers);
        updatedModifiers['engineerTarget'] = attribute;
        updateViewModel(viewModel.copyWith(modifiers: updatedModifiers));

      case CharacterCreationAction.increaseEngineerAttribute:
        final attribute = intent.payload['attribute'] as String;
        _handleIncreaseEngineerAttribute(attribute);

      case CharacterCreationAction.decreaseEngineerAttribute:
        final attribute = intent.payload['attribute'] as String;
        _handleDecreaseEngineerAttribute(attribute);

      case CharacterCreationAction.resetEngineerModifier:
        _handleResetEngineerModifier();

      case CharacterCreationAction.resetModifiers:
        _handleResetModifiers();
      case CharacterCreationAction.applyDexterityModifier:
        _handleApplyDexterityModifier(intent);
      case CharacterCreationAction.selectRangerSource:
        // Convert the old source/target update to the new statistics format
        final attribute = intent.payload['attribute'] as String?;
        // Update the source in modifiers
        final updatedModifiers = Map<String, dynamic>.from(viewModel.modifiers);
        updatedModifiers['rangerSource'] = attribute;
        updateViewModel(viewModel.copyWith(modifiers: updatedModifiers));

      case CharacterCreationAction.selectRangerTarget:
        // Convert the old target update to the new statistics format
        final currentStats = Map<String, int>.from(viewModel.statistics);
        final attribute = intent.payload['attribute'] as String?;
        if (attribute != null && viewModel.rangerSource != null) {
          // Move a point from source to target
          currentStats[viewModel.rangerSource!] =
              (currentStats[viewModel.rangerSource] ?? 0) - 1;
          currentStats[attribute] = (currentStats[attribute] ?? 0) + 1;
          _handleUpdateRangerModifiers(
            statistics: currentStats,
          );
        }
        // Update the target in modifiers
        final updatedModifiers = Map<String, dynamic>.from(viewModel.modifiers);
        updatedModifiers['rangerTarget'] = attribute;
        updateViewModel(viewModel.copyWith(modifiers: updatedModifiers));

      case CharacterCreationAction.resetRangerModifier:
        _handleResetRangerModifier();

      case CharacterCreationAction.updateRangerModifiers:
        _handleUpdateRangerModifiers(
          statistics: intent.payload['statistics'] as Map<String, int>,
          transferBegin: intent.payload['transferBegin'] as bool? ?? false,
          transferFinish: intent.payload['transferFinish'] as bool? ?? false,
        );
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
        updateViewModel(
          viewModel.copyWith(
            error: 'All statistics must be between 8 and 20',
          ),
        );
        return; // Don't proceed to next step
      }
    }

    // If we passed validation or it's not the statistics step, proceed
    if (currentStep.index < CharacterCreationStep.values.length - 1) {
      final nextStep = CharacterCreationStep.values[currentStep.index + 1];

      // Initialize selections when moving to the character step
      if (nextStep == CharacterCreationStep.character) {
        final stats = viewModel.statistics;

        // Filter available people based on statistics
        final availablePeoples = People.peoples.where((people) {
          return (stats['courage'] ?? 0) >= people.courage[0] &&
              (stats['intellect'] ?? 0) >= people.intellect[0] &&
              (stats['charisma'] ?? 0) >= people.charisma[0] &&
              (stats['dexterity'] ?? 0) >= people.dexterity[0] &&
              (stats['strength'] ?? 0) >= people.strength[0];
        }).toList();

        // Get available jobs for the selected people and stats
        final availableJobs = <Job>[];
        final firstPeople = availablePeoples.isNotEmpty
            ? availablePeoples.first
            : null;

        if (firstPeople != null) {
          availableJobs.addAll(
            firstPeople.jobs.where((job) {
              return (stats['courage'] ?? 0) >= job.courage[0] &&
                  (stats['intellect'] ?? 0) >= job.intellect[0] &&
                  (stats['charisma'] ?? 0) >= job.charisma[0] &&
                  (stats['dexterity'] ?? 0) >= job.dexterity[0] &&
                  (stats['strength'] ?? 0) >= job.strength[0];
            }),
          );
        }

        final firstJob = availableJobs.isNotEmpty ? availableJobs.first : null;
        final firstSpecialization =
            firstJob?.specializations.isNotEmpty ?? false
            ? firstJob!.specializations.first
            : null;

        updateViewModel(
          viewModel.copyWith(
            step: nextStep,
            error: null, // Clear any previous errors
            selectedPeople: firstPeople,
            selectedJob: firstJob,
            selectedSpecialization: firstSpecialization,
          ),
        );
      } else {
        updateViewModel(
          viewModel.copyWith(
            step: nextStep,
            error: null, // Clear any previous errors
          ),
        );
      }
    }

    // If we're moving to the skills step, clear any existing skills
    if (currentStep == CharacterCreationStep.character) {
      updateViewModel(
        viewModel.copyWith(
          step: CharacterCreationStep.skills,
          skills: {}, // Clear any existing skills
          error: null, // Clear any previous errors
        ),
      );
      return;
    }

    // If we're on the skills step, validate the number of selected skills
    if (currentStep == CharacterCreationStep.skills) {
      if (!viewModel.hasEnoughSkills) {
        final requiredSkills = viewModel.isHumanNone ? 4 : 2;
        updateViewModel(
          viewModel.copyWith(
            error: 'Please select exactly $requiredSkills optional skills',
          ),
        );
        return;
      }
    }
  }

  void _handlePreviousStep() {
    final currentStep = viewModel.step;
    if (currentStep.index > 0) {
      final previousStep = CharacterCreationStep.values[currentStep.index - 1];

      // Just update the step, keeping all other state including skills
      updateViewModel(
        viewModel.copyWith(
          step: previousStep,
          error: null, // Clear any errors
        ),
      );
    }
  }

  void _handleUpdateStatistics(Map<String, int> statistics) {
    updateViewModel(viewModel.copyWith(statistics: statistics));
  }

  void _handleSelectPeople(People? people) {
    // Use the withSelectedPeople method from the ViewModel which handles the cascading updates
    updateViewModel(viewModel.withSelectedPeople(people));
  }

  void _handleSelectJob(Job? job) {
    // Use the withSelectedJob method from the ViewModel which handles the cascading updates
    updateViewModel(viewModel.withSelectedJob(job));
  }

  void _handleSelectSpecialization(Specialization? specialization) {
    updateViewModel(
      viewModel.copyWith(selectedSpecialization: specialization),
    );
  }

  void _handleUpdateSkills(Map<Skill, int> skills) {
    updateViewModel(viewModel.copyWith(skills: skills));
  }

  void _handleUpdateModifiers(Map<String, dynamic> modifiers) {
    updateViewModel(viewModel.copyWith(modifiers: modifiers));
  }

  void _handleUpdateCharacter(Map<String, dynamic> updates) {
    // Update the view model with the provided character updates
    updateViewModel(
      viewModel.copyWith(
        // Add any specific updates from the updates map
        // For example: someField: updates['someField'],
      ),
    );
  }

  void _handleResetCharacterStats() {
    // Reset character stats to their initial values
    updateViewModel(
      viewModel.copyWith(
        statistics: const {},
        // Add any other fields that need to be reset
      ),
    );
  }

  void _handleUpdateOgreModifiers({
    required int attackModifier,
    required int parryModifier,
  }) {
    // Ensure the modifiers are within the allowed range (-3 to 0)
    final newAttackModifier = attackModifier.clamp(-3, 0);
    final newParryModifier = parryModifier.clamp(-3, 0);

    // Calculate the new base values with the modifiers applied
    final newAttackTotal = viewModel.baseAttack + newAttackModifier;
    final newParryTotal = viewModel.baseParry + newParryModifier;

    // Ensure we don't go below 1 for attack and parry
    if (newAttackTotal < 1 || newParryTotal < 1) {
      // Don't update if it would make attack or parry less than 1
      return;
    }

    // Calculate the total points spent (absolute value since modifiers are negative)
    final totalPoints = newAttackModifier.abs() + newParryModifier.abs();

    // If total points exceed 3, don't update
    if (totalPoints > 3) {
      return;
    }

    // If we get here, the changes are valid
    updateViewModel(
      viewModel.copyWith(
        ogreAttackModifier: newAttackModifier,
        ogreParryModifier: newParryModifier,
      ),
    );

    // Force a rebuild to update the UI
    setState(() {});
  }

  void _handleUpdateFighterModifiers({
    required int attackChange,
    required int parryChange,
  }) {
    // Fighter can only exchange 1 point between attack and parry
    if ((attackChange == 1 && parryChange == -1) ||
        (attackChange == -1 && parryChange == 1) ||
        (attackChange == 0 && parryChange == 0)) {
      updateViewModel(
        viewModel.copyWith(
          fighterAttackModifier: viewModel.fighterAttackModifier + attackChange,
          fighterParryModifier: viewModel.fighterParryModifier + parryChange,
        ),
      );
    }
  }

  void _handleUpdateRangerModifiers({
    required Map<String, int> statistics,
    bool transferBegin = false,
    bool transferFinish = false,
    Map<String, int>? originalStats,
  }) {
    final updatedModifiers = Map<String, dynamic>.from(viewModel.modifiers);

    // If originalStats is provided, use it, otherwise keep existing or initialize
    if (originalStats != null) {
      updatedModifiers['rangerOriginalStats'] = Map<String, int>.from(
        originalStats,
      );
    } else if (transferBegin &&
        !updatedModifiers.containsKey('rangerOriginalStats')) {
      // Only save original stats if we're beginning a transfer and don't have them already
      updatedModifiers['rangerOriginalStats'] = Map<String, int>.from(
        viewModel.statistics,
      );
    }

    updateViewModel(
      viewModel.copyWith(
        statistics: statistics,
        modifiers: {
          ...updatedModifiers,
          'rangerTransferBegin': transferBegin,
          'rangerTransferFinish': transferFinish,
        },
      ),
    );
  }

  void _handleResetRangerModifier() {
    final updatedModifiers = Map<String, dynamic>.from(viewModel.modifiers);
    final originalStats = viewModel.rangerOriginalStats;

    if (originalStats != null) {
      // Restore original stats but keep the transfer active
      updateViewModel(
        viewModel.copyWith(
          statistics: Map<String, int>.from(originalStats),
          // Keep the transfer begin state but reset finish state
          modifiers: {
            ...updatedModifiers,
            'rangerTransferFinish': false,
            'rangerTarget': null, // Clear any previous target
            // Keep rangerSource and rangerOriginalStats to allow retrying the transfer
          },
        ),
      );
    } else {
      // If no original stats, just reset the transfer state
      updateViewModel(
        viewModel.copyWith(
          rangerTransferBegin: false,
          rangerTransferFinish: false,
        ),
      );
    }

    // Don't clean up the source and original stats to allow retrying
    updatedModifiers
      ..remove('rangerTarget')
      ..remove('rangerTransferFinish');

    updateViewModel(
      viewModel.copyWith(
        modifiers: updatedModifiers,
      ),
    );
  }

  void _handleUpdateDealerModifiers({
    required Map<String, int> statistics,
    bool transferBegin = false,
    bool transferFinish = false,
    Map<String, int>? originalStats,
  }) {
    final newModifiers = Map<String, dynamic>.from(viewModel.modifiers);

    if (transferBegin) {
      newModifiers['dealerTransferBegin'] = true;
      newModifiers['dealerOriginalStats'] = originalStats;
    }

    if (transferFinish) {
      newModifiers['dealerTransferBegin'] = false;
      newModifiers['dealerTransferFinish'] = true;
    }

    updateViewModel(
      viewModel.copyWith(
        statistics: statistics,
        modifiers: newModifiers,
      ),
    );
  }

  void _handleResetDealerModifier() {
    final newModifiers = Map<String, dynamic>.from(viewModel.modifiers)
    ..remove('dealerTransferBegin')
    ..remove('dealerTransferFinish')
    ..remove('dealerOriginalStats');

    final newStats = Map<String, int>.from(viewModel.statistics);
    // Reset any dealer-specific stats if needed

    updateViewModel(
      viewModel.copyWith(
        statistics: newStats,
        modifiers: newModifiers,
      ),
    );
  }

  void _handleUpdateEngineerModifiers({
    required Map<String, int> statistics,
    bool transferBegin = false,
    bool transferFinish = false,
    Map<String, int>? originalStats,
  }) {
    final updatedModifiers = Map<String, dynamic>.from(viewModel.modifiers);

    if (originalStats != null) {
      updatedModifiers['engineerOriginalStats'] = Map<String, int>.from(
        originalStats,
      );
    } else if (transferBegin &&
        !updatedModifiers.containsKey('engineerOriginalStats')) {
      updatedModifiers['engineerOriginalStats'] = Map<String, int>.from(
        viewModel.statistics,
      );
    }

    updateViewModel(
      viewModel.copyWith(
        statistics: statistics,
        modifiers: {
          ...updatedModifiers,
          'engineerTransferBegin': transferBegin,
          'engineerTransferFinish': transferFinish,
        },
      ),
    );
  }

  void _handleUpdateEngineerAttribute(CharacterCreationIntent intent) {
    final attribute = intent.payload['attribute'] as String;
    final increment = intent.payload['increment'] as int;
    final currentValue = viewModel.statistics[attribute] ?? 0;
    final newValue = currentValue + increment;

    // Update the statistics
    final newStats = Map<String, int>.from(viewModel.statistics);
    newStats[attribute] = newValue;

    // Update the view model with new stats and engineer points
    final newModifiers = Map<String, dynamic>.from(viewModel.modifiers);

    updateViewModel(
      viewModel.copyWith(
        statistics: newStats,
        modifiers: newModifiers,
      ),
    );
  }

  void _handleIncreaseEngineerAttribute(String attribute) {
    final stats = Map<String, int>.from(viewModel.statistics);

    // Find which combat stat to decrease
    String? combatStatToDecrease;
    if (stats['attack'] != null && stats['attack']! > 0) {
      combatStatToDecrease = 'attack';
    } else if (stats['parry'] != null && stats['parry']! > 0) {
      combatStatToDecrease = 'parry';
    }

    if (combatStatToDecrease != null) {
      // Decrease combat stat
      stats[combatStatToDecrease] = stats[combatStatToDecrease]! - 1;

      // Increase engineer stat
      stats[attribute] = (stats[attribute] ?? 0) + 1;

      // Update the statistics using the proper MVI pattern
      updateViewModel(viewModel.copyWith(statistics: stats));
    }
  }

  void _handleDecreaseEngineerAttribute(String attribute) {
    final stats = Map<String, int>.from(viewModel.statistics);

    // Check if we can find a combat stat to increase
    if (stats[attribute] != null && stats[attribute]! > 0) {
      // Decrease engineer stat
      stats[attribute] = stats[attribute]! - 1;

      // Increase attack by default, or parry if attack is already at base
      if (stats['attack'] != null && stats['attack']! < viewModel.baseAttack) {
        stats['attack'] = stats['attack']! + 1;
      } else if (stats['parry'] != null &&
          stats['parry']! < viewModel.baseParry) {
        stats['parry'] = stats['parry']! + 1;
      } else {
        // If we can't increase any combat stat, revert the change
        return;
      }

      // Update the statistics using the proper MVI pattern
      updateViewModel(viewModel.copyWith(statistics: stats));
    }
  }

  void _handleResetEngineerModifier() {
    final updatedModifiers = Map<String, dynamic>.from(viewModel.modifiers);
    final originalStats = viewModel.engineerOriginalStats;

    if (originalStats != null) {
      updateViewModel(
        viewModel.copyWith(
          statistics: Map<String, int>.from(originalStats),
          modifiers: {
            ...updatedModifiers,
            'engineerTransferFinish': false,
            'engineerTarget': null,
          },
        ),
      );
    } else {
      updateViewModel(
        viewModel.copyWith(
          engineerTransferBegin: false,
          engineerTransferFinish: false,
        ),
      );
    }

    updatedModifiers
      ..remove('engineerTarget')
      ..remove('engineerTransferFinish');

    updateViewModel(
      viewModel.copyWith(
        modifiers: updatedModifiers,
      ),
    );
  }

  void _handleApplyDexterityModifier(CharacterCreationIntent intent) {
    final dexterity = viewModel.statistics['dexterity'] ?? 0;
    final isNinja = viewModel.selectedJob?.name == 'Ninja';
    final attribute =
        intent.payload['attribute'] as String?; // Access attribute from payload

    // If no attribute is provided and one is required, don't update
    if (attribute == null && (dexterity < 9 || (dexterity > 12 && !isNinja))) {
      return;
    }

    // Determine the modifier value based on dexterity
    final dexterityModifier = dexterity < 9
        ? -1
        : (dexterity > 12 && !isNinja)
        ? 1
        : 0;

    updateViewModel(
      viewModel.copyWith(
        dexterityModifier: dexterityModifier,
        dexterityModifierAttribute: attribute,
      ),
    );
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

  void _handleResetModifiers() {
    final newModifiers = Map<String, dynamic>.from(viewModel.modifiers);

    // Reset all modifier values
    newModifiers['ogreAttackModifier'] = 0;
    newModifiers['ogreParryModifier'] = 0;
    newModifiers['fighterAttackModifier'] = 0;
    newModifiers['fighterParryModifier'] = 0;
    newModifiers['rangerSource'] = null;
    newModifiers['rangerTarget'] = null;
    newModifiers['dealerSource'] = null;
    newModifiers['dealerTarget'] = null;
    newModifiers['engineerSource'] = null;
    newModifiers['engineerTarget'] = null;
    newModifiers['dexterityModifier'] = 0;
    newModifiers['dexterityModifierAttribute'] = null;

    updateViewModel(
      viewModel.copyWith(
        modifiers: newModifiers,
      ),
    );
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
            value:
                (viewModel.step.index + 1) /
                CharacterCreationStep.values.length,
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
                  availablePeople: viewModel.availablePeoples,
                  selectedJob: viewModel.selectedJob,
                  availableJobs: viewModel.availableJobs,
                  selectedSpecialization: viewModel.selectedSpecialization,
                  availableSpecializations: viewModel.availableSpecializations,
                  onIntent: onIntent,
                ),
                // Step 3: Skills
                Step3Skills(
                  birthSkills:
                      viewModel.isHumanNone
                            ? []
                            : [
                                ...{
                                  ...?viewModel.selectedPeople?.birthSkills,
                                  ...?viewModel.selectedJob?.inheritedSkills,
                                },
                              ].toList()
                        ..sort((a, b) => a.name.compareTo(b.name)),
                  optionalSkills: [
                    ...{
                          ...?viewModel.selectedPeople?.optionalSkills,
                          ...?viewModel.selectedJob?.optionalSkills,
                        }
                        .where(
                          (skill) =>
                              !(!viewModel.isHumanNone &&
                                  [
                                    ...?viewModel.selectedPeople?.birthSkills,
                                    ...?viewModel.selectedJob?.inheritedSkills,
                                  ].contains(skill)),
                        )
                        .toList()
                      ..sort((a, b) => a.name.compareTo(b.name)),
                  ],
                  selectedOptionalSkills: viewModel.skills.entries
                      .where(
                        (entry) =>
                            entry.value == 0 &&
                            !(!viewModel.isHumanNone &&
                                [
                                  ...?viewModel.selectedPeople?.birthSkills,
                                  ...?viewModel.selectedJob?.inheritedSkills,
                                ].contains(entry.key)),
                      )
                      .map((entry) => entry.key)
                      .toSet(),
                  optionalSkillPoints: viewModel.optionalSkillPoints,
                  onAddOptionalSkill: (skill) {
                    final newSkills = Map<Skill, int>.from(viewModel.skills)
                      ..[skill] = 0;
                    onIntent(CharacterCreationIntent.updateSkills(newSkills));
                  },
                  onRemoveOptionalSkill: (skill) {
                    final newSkills = Map<Skill, int>.from(viewModel.skills)
                      ..remove(skill);
                    onIntent(CharacterCreationIntent.updateSkills(newSkills));
                  },
                  error:
                      viewModel.step == CharacterCreationStep.skills &&
                          !viewModel.hasEnoughSkills
                      ? viewModel.isHumanNone
                            ? 'Please select 4 optional skills'
                            : 'Please select 2 optional skills'
                      : null,
                ),
                // Step 4: Modifiers
                Step4Modifiers(
                  viewModel: viewModel,
                  onIntent: onIntent,
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
                    onPressed: () =>
                        onIntent(CharacterCreationIntent.goToPreviousStep()),
                    child: const Text('Previous'),
                  )
                else
                  const SizedBox(width: 100),
                if (viewModel.step.index <
                    CharacterCreationStep.values.length - 1)
                  ElevatedButton(
                    onPressed:
                        viewModel.step == CharacterCreationStep.statistics &&
                                !viewModel.areStatisticsValid ||
                            viewModel.step ==
                                    CharacterCreationStep
                                        .skills && // Add this condition
                                !viewModel
                                    .hasEnoughSkills // Check if enough skills are selected
                                    ||
                            viewModel.step == CharacterCreationStep.modifiers &&
                                !viewModel
                                    .hasValidModifiers // Check if modifiers are valid
                        ? null
                        : () =>
                              onIntent(CharacterCreationIntent.goToNextStep()),
                    child: const Text('Next'),
                  )
                else
                  ElevatedButton(
                    onPressed: viewModel.isLoading
                        ? null
                        : () {
                            debugPrint('Finalizing character creation');
                            onIntent(
                              CharacterCreationIntent.finalizeCharacter(),
                            );
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
