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
    this.modifiers = const {},
  });

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

    final availableJobs = this.availableJobs;
    final firstJob = availableJobs.isNotEmpty ? availableJobs.first : null;
    final firstSpecialization = firstJob?.specializations.isNotEmpty ?? false
        ? firstJob!.specializations.first
        : null;

    return copyWith(
      selectedPeople: people,
      selectedJob: firstJob,
      selectedSpecialization: firstSpecialization,
    );
  }

  /// Creates a new ViewModel with the selected job and auto-selected specialization
  CharacterCreationViewModel withSelectedJob(Job? job) {
    if (job == null) {
      return copyWith(
        selectedJob: null,
        selectedSpecialization: null,
      );
    }

    final firstSpecialization = job.specializations.isNotEmpty
        ? job.specializations.first
        : null;

    return copyWith(
      selectedJob: job,
      selectedSpecialization: firstSpecialization,
    );
  }

  List<Specialization> get availableSpecializations {
    if (selectedJob == null) return [];

    return selectedJob!.specializations.toList();
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
  }) {
    return CharacterCreationViewModel(
      step: step ?? this.step,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      statistics: statistics ?? this.statistics,
      selectedPeople: selectedPeople ?? this.selectedPeople,
      selectedJob: selectedJob ?? this.selectedJob,
      selectedSpecialization:
          selectedSpecialization ?? this.selectedSpecialization,
      skills: skills ?? this.skills,
      modifiers: modifiers ?? this.modifiers,
      characterName: characterName ?? this.characterName,
    );
  }
}
