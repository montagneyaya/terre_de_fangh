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
