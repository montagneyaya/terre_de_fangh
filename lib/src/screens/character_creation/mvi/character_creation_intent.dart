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
  selectRangerSource,
  selectRangerTarget,
  resetRangerModifier,
  updateRangerModifiers,
  updateOgreModifiers,
  updateFighterModifiers,
  updateDealerModifiers,
  resetDealerModifier,
  updateEngineerModifiers,
  updateEngineerAttribute,
  selectEngineerSource,
  selectEngineerTarget,
  increaseEngineerAttribute,
  decreaseEngineerAttribute,
  resetEngineerModifier,
  resetModifiers,
  applyDexterityModifier,
}

class CharacterCreationIntent extends MviIntent {
  @visibleForTesting
  const CharacterCreationIntent(this.action, [this.payload = const {}]);

  /// Creates an intent to reset ranger modifier
  factory CharacterCreationIntent.resetRangerModifier() {
    return const CharacterCreationIntent._(
      CharacterCreationAction.resetRangerModifier,
    );
  }

  const CharacterCreationIntent._(this.action, [this.payload = const {}]);

  /// Creates an intent to start
  factory CharacterCreationIntent.start() {
    return const CharacterCreationIntent._(CharacterCreationAction.start);
  }

  /// Creates an intent to update character statistics
  factory CharacterCreationIntent.updateStatistics(
    Map<String, int> statistics,
  ) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateStatistics,
      {'statistics': statistics},
    );
  }

  /// Creates an intent to proceed to the next step
  factory CharacterCreationIntent.goToNextStep() {
    return const CharacterCreationIntent._(
      CharacterCreationAction.goToNextStep,
    );
  }

  /// Creates an intent to go back to the previous step
  factory CharacterCreationIntent.goToPreviousStep() {
    return const CharacterCreationIntent._(
      CharacterCreationAction.goToPreviousStep,
    );
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
  factory CharacterCreationIntent.updateModifiers(
    Map<String, dynamic> modifiers,
  ) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateModifiers,
      {'modifiers': modifiers},
    );
  }

  /// Creates an intent to finalize character
  factory CharacterCreationIntent.finalizeCharacter() {
    return const CharacterCreationIntent._(
      CharacterCreationAction.finalizeCharacter,
    );
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
    return const CharacterCreationIntent._(
      CharacterCreationAction.resetCharacterStats,
    );
  }

  /// Creates an intent to select ranger source
  factory CharacterCreationIntent.selectRangerSource(dynamic attribute) {
    return CharacterCreationIntent._(
      CharacterCreationAction.selectRangerSource,
      {'attribute': attribute},
    );
  }

  /// Creates an intent to select ranger target
  factory CharacterCreationIntent.selectRangerTarget(dynamic attribute) {
    return CharacterCreationIntent._(
      CharacterCreationAction.selectRangerTarget,
      {'attribute': attribute},
    );
  }

  /// Creates an intent to update ranger modifiers
  factory CharacterCreationIntent.updateRangerModifiers({
    required Map<String, int> statistics,
    bool transferBegin = false,
    bool transferFinish = false,
    Map<String, int>? originalStats,
  }) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateRangerModifiers,
      {
        'statistics': statistics,
        'transferBegin': transferBegin,
        'transferFinish': transferFinish,
        'originalStats': ?originalStats,
      },
    );
  }

  factory CharacterCreationIntent.updateOgreModifiers({
    int attackModifier = 0,
    int parryModifier = 0,
  }) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateOgreModifiers,
      {
        'ogreAttackModifier': attackModifier,
        'ogreParryModifier': parryModifier,
      },
    );
  }

  factory CharacterCreationIntent.updateFighterModifiers({
    required int attackChange,
    required int parryChange,
  }) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateFighterModifiers,
      {
        'fighterAttackChange': attackChange,
        'fighterParryChange': parryChange,
      },
    );
  }

  factory CharacterCreationIntent.updateDealerModifiers({
    required Map<String, int> statistics,
    bool transferBegin = false,
    bool transferFinish = false,
    Map<String, int>? originalStats,
  }) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateDealerModifiers,
      {
        'statistics': statistics,
        'transferBegin': transferBegin,
        'transferFinish': transferFinish,
        'originalStats': originalStats,
      },
    );
  }

  factory CharacterCreationIntent.resetDealerModifier() {
    return const CharacterCreationIntent._(
      CharacterCreationAction.resetDealerModifier,
    );
  }

  factory CharacterCreationIntent.updateEngineerModifiers({
    required Map<String, int> statistics,
    bool transferBegin = false,
    bool transferFinish = false,
    Map<String, int>? originalStats,
  }) {
    return CharacterCreationIntent._(
      CharacterCreationAction.updateEngineerModifiers,
      {
        'statistics': statistics,
        'transferBegin': transferBegin,
        'transferFinish': transferFinish,
        'originalStats': originalStats,
      },
    );
  }

  factory CharacterCreationIntent.selectEngineerSource(String? attribute) {
    return CharacterCreationIntent._(
      CharacterCreationAction.selectEngineerSource,
      {'attribute': attribute},
    );
  }

  factory CharacterCreationIntent.selectEngineerTarget(String? attribute) {
    return CharacterCreationIntent._(
      CharacterCreationAction.selectEngineerTarget,
      {'attribute': attribute},
    );
  }

  factory CharacterCreationIntent.increaseEngineerAttribute(String attribute) {
    return CharacterCreationIntent._(
      CharacterCreationAction.increaseEngineerAttribute,
      {'attribute': attribute},
    );
  }

  factory CharacterCreationIntent.decreaseEngineerAttribute(String attribute) {
    return CharacterCreationIntent._(
      CharacterCreationAction.decreaseEngineerAttribute,
      {'attribute': attribute},
    );
  }

  factory CharacterCreationIntent.resetEngineerModifier() {
    return const CharacterCreationIntent._(
      CharacterCreationAction.resetEngineerModifier,
    );
  }

  factory CharacterCreationIntent.resetModifiers() {
    return const CharacterCreationIntent._(
      CharacterCreationAction.resetModifiers,
    );
  }

  factory CharacterCreationIntent.applyDexterityModifier({String? attribute}) {
    return CharacterCreationIntent._(
      CharacterCreationAction.applyDexterityModifier,
      {'attribute': attribute},
    );
  }

  final CharacterCreationAction action;
  final Map<String, dynamic> payload;
}
