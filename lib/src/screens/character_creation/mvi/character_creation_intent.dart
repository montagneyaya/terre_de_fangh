import 'package:flutter/foundation.dart';
import 'package:myapp/src/data/creatures/player_character/skill.dart';
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

  @visibleForTesting
  const CharacterCreationIntent(this.action, [this.payload = const {}]);

  /// Creates an intent to reset ranger modifier
  factory CharacterCreationIntent.resetRangerModifier() {
    return const CharacterCreationIntent._(CharacterCreationAction.resetRangerModifier);
  }

  const CharacterCreationIntent._(this.action, [this.payload = const {}]);

  /// Creates an intent to start
  factory CharacterCreationIntent.start() {
    return const CharacterCreationIntent._(CharacterCreationAction.start);
  }

  /// Creates an intent to update character statistics
  factory CharacterCreationIntent.updateStatistics(Map<String, int> statistics) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateStatistics,
      {'statistics': statistics},
    );
  }

  /// Creates an intent to proceed to the next step
  factory CharacterCreationIntent.goToNextStep() {
    return const CharacterCreationIntent._(CharacterCreationAction.goToNextStep);
  }

  /// Creates an intent to go back to the previous step
  factory CharacterCreationIntent.goToPreviousStep() {
    return const CharacterCreationIntent._(CharacterCreationAction.goToPreviousStep);
  }

  /// Creates an intent to select people
  factory CharacterCreationIntent.selectPeople(dynamic people) {
    return CharacterCreationIntent._(
      CharacterCreationAction.selectPeople,
      {'people': people},
    );
  }

  /// Creates an intent to select job
  factory CharacterCreationIntent.selectJob(dynamic job) {
    return CharacterCreationIntent._(
      CharacterCreationAction.selectJob,
      {'job': job},
    );
  }

  /// Creates an intent to select specialization
  factory CharacterCreationIntent.selectSpecialization(dynamic specialization) {
    return CharacterCreationIntent._(
      CharacterCreationAction.selectSpecialization,
      {'specialization': specialization},
    );
  }

  /// Creates an intent to update skills
  factory CharacterCreationIntent.updateSkills(Map<Skill, int> skills) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateSkills,
      {'skills': skills},
    );
  }

  /// Creates an intent to update modifiers
  factory CharacterCreationIntent.updateModifiers(Map<String, dynamic> modifiers) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateModifiers,
      {'modifiers': modifiers},
    );
  }

  /// Creates an intent to finalize character
  factory CharacterCreationIntent.finalizeCharacter() {
    return const CharacterCreationIntent._(CharacterCreationAction.finalizeCharacter);
  }

  /// Creates an intent to update character
  factory CharacterCreationIntent.updateCharacter(dynamic character) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateCharacter,
      {'character': character},
    );
  }

  /// Creates an intent to reset character stats
  factory CharacterCreationIntent.resetCharacterStats() {
    return const CharacterCreationIntent._(CharacterCreationAction.resetCharacterStats);
  }

  /// Creates an intent to select ranger source attribute
  factory CharacterCreationIntent.selectRangerSourceAttribute(dynamic attribute) {
    return CharacterCreationIntent._(
      CharacterCreationAction.selectRangerSourceAttribute,
      {'attribute': attribute},
    );
  }

  /// Creates an intent to select ranger target attribute
  factory CharacterCreationIntent.selectRangerTargetAttribute(dynamic attribute) {
    return CharacterCreationIntent._(
      CharacterCreationAction.selectRangerTargetAttribute,
      {'attribute': attribute},
    );
  }
  final CharacterCreationAction action;
  final Map<String, dynamic> payload;
}
