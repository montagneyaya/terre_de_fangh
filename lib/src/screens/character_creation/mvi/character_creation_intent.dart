import 'package:myapp/src/ui/mvi/intent.dart';

enum CharacterCreationAction {
  start,
  goToNextStep,
  goToPreviousStep,
  updateStatistics,
  selectPeople,
  selectJob,
  selectSpecialization,
  updateSkills,
  updateModifiers,
  finalizeCharacter,
  updateCharacter,
  resetCharacterStats,
  selectRangerSourceAttribute,
  selectRangerTargetAttribute,
  resetRangerModifier,
}

class CharacterCreationIntent extends MviIntent {

  const CharacterCreationIntent(this.action, [this.payload = const {}]);
  final CharacterCreationAction action;
  final Map<String, dynamic> payload;
}
