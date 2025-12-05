import 'package:myapp/src/data/creatures/player_character/job.dart';
import 'package:myapp/src/data/creatures/player_character/people.dart';
import 'package:myapp/src/data/creatures/player_character/skill.dart';
import 'package:myapp/src/data/creatures/player_character/specialization.dart';
import 'package:myapp/src/ui/mvi/base_mvi.dart';

enum CharacterCreationStep {
  statistics,
  character,
  skills,
  modifiers,
  finalizing,
}

class CharacterCreationViewModel extends MviViewModel {
  const CharacterCreationViewModel({
    required this.characterName,
    required this.step,
    this.isLoading = false,
    this.error,
    this.statistics = const {},
    this.selectedPeople,
    this.selectedJob,
    this.selectedSpecialization,
    this.skills = const {},
    Map<String, dynamic>? modifiers,
  }) : modifiers = modifiers ?? const {};

  // Modifiers getters
  int get attackModifier {
    return (ogreAttackModifier + fighterAttackModifier + dexterityModifier)
        .clamp(-3, 3);
  }

  int get parryModifier {
    return (ogreParryModifier + fighterParryModifier + dexterityModifier).clamp(
      -3,
      3,
    );
  }

  bool get isOgre => selectedPeople?.name == 'Ogre';

  // Ogre modifiers
  int get ogreAttackModifier => (modifiers['ogreAttackModifier'] as int?) ?? 0;
  int get ogreParryModifier => (modifiers['ogreParryModifier'] as int?) ?? 0;

  // Base values with fallback: if job's value is 0, use people's value
  int get baseAttack => (selectedJob != null && selectedJob!.attack != 0)
      ? selectedJob!.attack
      : selectedPeople?.attack ?? 0;

  int get baseParry => (selectedJob != null && selectedJob!.parry != 0)
      ? selectedJob!.parry
      : selectedPeople?.parry ?? 0;

  // Calculated values
  int get modifiedAttack => baseAttack + ogreAttackModifier;
  int get modifiedParry => baseParry + ogreParryModifier;

  // Fighter modifiers
  int get fighterAttackModifier =>
      (modifiers['fighterAttackModifier'] as int?) ?? 0;
  int get fighterParryModifier =>
      (modifiers['fighterParryModifier'] as int?) ?? 0;

  // Ranger modifiers
  String? get rangerSource => modifiers['rangerSource'] as String?;
  String? get rangerTarget => modifiers['rangerTarget'] as String?;
  bool get rangerTransferBegin =>
      (modifiers['rangerTransferBegin'] as bool?) ?? false;
  bool get rangerTransferFinish =>
      (modifiers['rangerTransferFinish'] as bool?) ?? false;
  Map<String, int>? get rangerOriginalStats {
    final stats = modifiers['rangerOriginalStats'];
    return stats != null ? Map<String, int>.from(stats as Map) : null;
  }

  // Dealer modifiers
  String? get dealerSource => modifiers['dealerSource'] as String?;
  String? get dealerTarget => modifiers['dealerTarget'] as String?;

  // Engineer modifiers
  String? get engineerSource => modifiers['engineerSource'] as String?;
  String? get engineerTarget => modifiers['engineerTarget'] as String?;

  // Dexterity modifier
  int get dexterityModifier => (modifiers['dexterityModifier'] as int?) ?? 0;
  String? get dexterityModifierAttribute =>
      modifiers['dexterityModifierAttribute'] as String?;
  bool get isFighter => selectedJob?.name == 'Fighter';
  bool get isRanger => selectedJob?.name == 'Ranger';
  bool get isDealer => selectedJob?.name == 'Dealer';
  bool get isEngineer => selectedJob?.name == 'Engineer';
  bool get isNinja => selectedJob?.name == 'Ninja';

  bool get hasValidModifiers {
    // Ogre validation
    if (isOgre) {
      final totalOgreModifier =
          ogreAttackModifier.abs() + ogreParryModifier.abs();
      if (totalOgreModifier > 0 && totalOgreModifier > 3) return false;
    }

    // Dealer validation
    if (isDealer) {
      if (dealerSource == null || dealerTarget == null) return false;
      if (dealerSource != 'attack' && dealerSource != 'parry') return false;
      if (dealerTarget != 'intellect' && dealerTarget != 'charisma') {
        return false;
      }
    }

    // Engineer validation
    if (isEngineer) {
      if (engineerSource == null || engineerTarget == null) return false;
      if (engineerSource != 'attack' && engineerSource != 'parry') return false;
      if (engineerTarget != 'intellect' && engineerTarget != 'dexterity') {
        return false;
      }
    }

    // Ranger validation
    if (isRanger) {
      // Check if source and target are selected
      if (rangerSource == null || rangerTarget == null) return false;

      // Source and target must be different
      if (rangerSource == rangerTarget) return false;

      // Validate source is one of the allowed attributes
      final validSources = ['strength', 'dexterity', 'intellect', 'charisma'];
      if (!validSources.contains(rangerSource)) return false;

      // Validate target is one of the allowed attributes
      final validTargets = ['strength', 'dexterity', 'intellect', 'charisma'];
      if (!validTargets.contains(rangerTarget)) return false;
    }

    // Dexterity based modifiers
    final dexterity = statistics['dexterity'] ?? 0;
    if (dexterity < 9 && dexterityModifier >= 0) return false;
    if (dexterity > 12 && !isNinja && dexterityModifier <= 0) return false;

    return true;
  }

  bool get areStatisticsValid {
    return statistics.values.every((value) => value >= 8 && value <= 20);
  }

  List<People> get availablePeoples {
    return People.peoples.where((people) {
      return (statistics['courage'] ?? 0) >= people.courage[0] &&
          (statistics['intellect'] ?? 0) >= people.intellect[0] &&
          (statistics['charisma'] ?? 0) >= people.charisma[0] &&
          (statistics['dexterity'] ?? 0) >= people.dexterity[0] &&
          (statistics['strength'] ?? 0) >= people.strength[0];
    }).toList();
  }

  List<Job> get availableJobs {
    if (selectedPeople == null) return [];

    return selectedPeople!.jobs.where((job) {
      return (statistics['courage'] ?? 0) >= job.courage[0] &&
          (statistics['intellect'] ?? 0) >= job.intellect[0] &&
          (statistics['charisma'] ?? 0) >= job.charisma[0] &&
          (statistics['dexterity'] ?? 0) >= job.dexterity[0] &&
          (statistics['strength'] ?? 0) >= job.strength[0];
    }).toList();
  }

  bool get isHumanNone {
    return selectedPeople?.name == 'Human' && selectedJob?.name == 'None';
  }

  int get optionalSkillPoints => isHumanNone ? 4 : 2;

  int get selectedOptionalSkillsCount =>
      skills.entries.where((entry) => entry.value == 0).length;

  bool get hasEnoughSkills {
    final selectedCount = skills.entries
        .where((entry) => entry.value == 0)
        .length;
    return isHumanNone ? selectedCount == 4 : selectedCount == 2;
  }

  /// Creates a new ViewModel with the selected people and auto-selected job/specialization
  CharacterCreationViewModel withSelectedPeople(People? people) {
    if (people == null) {
      return copyWith(
        selectedPeople: null,
        selectedJob: null,
        selectedSpecialization: null,
      );
    }

    // Create a new view model with the selected people
    var newViewModel = copyWith(
      selectedPeople: people,
      selectedJob: null,
      selectedSpecialization: null,
    );

    // Get available jobs for the selected people
    final availableJobs = newViewModel.availableJobs;
    if (availableJobs.isNotEmpty) {
      // Select the first available job
      final firstJob = availableJobs.first;
      newViewModel = newViewModel.copyWith(selectedJob: firstJob);

      // Get available specializations for the selected job
      final availableSpecializations = firstJob.specializations;
      if (availableSpecializations.isNotEmpty) {
        // Select the first available specialization
        newViewModel = newViewModel.copyWith(
          selectedSpecialization: availableSpecializations.first,
        );
      }
    }

    return newViewModel;
  }

  /// Creates a new ViewModel with the selected job and auto-selected specialization
  CharacterCreationViewModel withSelectedJob(Job? job) {
    if (job == null) {
      return copyWith(
        selectedJob: null,
        selectedSpecialization: null,
      );
    }

    // Create a new view model with the selected job
    var newViewModel = copyWith(
      selectedJob: job,
      selectedSpecialization: null,
    );
    // Get available specializations for the selected job
    final availableSpecializations = job.specializations;
    if (availableSpecializations.isNotEmpty) {
      // Select the first available specialization
      newViewModel = newViewModel.copyWith(
        selectedSpecialization: availableSpecializations.first,
      );
    }
    return newViewModel;
  }

  final CharacterCreationStep step;
  final bool isLoading;
  final String? error;
  final String characterName;
  final Map<String, int> statistics;
  final People? selectedPeople;
  final Job? selectedJob;
  final Specialization? selectedSpecialization;
  final Map<Skill, int> skills;
  final Map<String, dynamic> modifiers;

  List<Specialization> get availableSpecializations {
    if (selectedJob == null) return [];
    return selectedJob!.specializations.toList();
  }

  CharacterCreationViewModel copyWith({
    CharacterCreationStep? step,
    bool? isLoading,
    String? error,
    Map<String, int>? statistics,
    People? selectedPeople,
    Job? selectedJob,
    Specialization? selectedSpecialization,
    Map<Skill, int>? skills,
    Map<String, dynamic>? modifiers,
    String? characterName,
    // Modifier parameters
    String? rangerSource,
    String? rangerTarget,
    bool? rangerTransferBegin,
    bool? rangerTransferFinish,
    Map<String, int>? rangerOriginalStats,
    int? ogreAttackModifier,
    int? ogreParryModifier,
    int? fighterAttackModifier,
    int? fighterParryModifier,
    String? dealerSource,
    String? dealerTarget,
    String? engineerSource,
    String? engineerTarget,
    int? dexterityModifier,
    String? dexterityModifierAttribute,
  }) {
    // Create a new modifiers map with the current values
    final newModifiers = Map<String, dynamic>.from(modifiers ?? this.modifiers);

    // Update the modifiers map with any new values
    if (rangerSource != null) newModifiers['rangerSource'] = rangerSource;
    if (rangerTarget != null) newModifiers['rangerTarget'] = rangerTarget;
    if (rangerTransferBegin != null) {
      newModifiers['rangerTransferBegin'] = rangerTransferBegin;
    }
    if (rangerTransferFinish != null) {
      newModifiers['rangerTransferFinish'] = rangerTransferFinish;
    }
    if (rangerOriginalStats != null) {
      newModifiers['rangerOriginalStats'] = rangerOriginalStats;
    }
    if (ogreAttackModifier != null) {
      newModifiers['ogreAttackModifier'] = ogreAttackModifier;
    }
    if (ogreParryModifier != null) {
      newModifiers['ogreParryModifier'] = ogreParryModifier;
    }
    if (fighterAttackModifier != null) {
      newModifiers['fighterAttackModifier'] = fighterAttackModifier;
    }
    if (fighterParryModifier != null) {
      newModifiers['fighterParryModifier'] = fighterParryModifier;
    }
    if (dealerSource != null) newModifiers['dealerSource'] = dealerSource;
    if (dealerTarget != null) newModifiers['dealerTarget'] = dealerTarget;
    if (engineerSource != null) newModifiers['engineerSource'] = engineerSource;
    if (engineerTarget != null) newModifiers['engineerTarget'] = engineerTarget;
    if (dexterityModifier != null) {
      newModifiers['dexterityModifier'] = dexterityModifier;
    }
    if (dexterityModifierAttribute != null) {
      newModifiers['dexterityModifierAttribute'] = dexterityModifierAttribute;
    }

    return CharacterCreationViewModel(
      step: step ?? this.step,
      isLoading: isLoading ?? this.isLoading,
      error: this.error,
      statistics: statistics ?? Map.from(this.statistics),
      selectedPeople: selectedPeople ?? this.selectedPeople,
      selectedJob: selectedJob ?? this.selectedJob,
      selectedSpecialization:
          selectedSpecialization ?? this.selectedSpecialization,
      skills: skills ?? Map.from(this.skills),
      modifiers: newModifiers,
      characterName: characterName ?? this.characterName,
    );
  }
}
