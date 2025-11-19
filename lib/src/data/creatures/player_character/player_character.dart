import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/src/data/creatures/creatures.dart';
import 'package:myapp/src/data/creatures/player_character/job.dart';
import 'package:myapp/src/data/creatures/player_character/people.dart';
import 'package:myapp/src/data/creatures/player_character/skill.dart';
import 'package:myapp/src/data/creatures/player_character/specialization.dart';
import 'package:myapp/src/data/items/item.dart';
import 'package:myapp/src/data/modifiers/add_natural_damages.dart';
import 'package:myapp/src/data/modifiers/add_spell_damages.dart';

part 'player_character.freezed.dart';
part 'player_character.g.dart';

@freezed
abstract class PlayerCharacter with _$PlayerCharacter {
  const factory PlayerCharacter({
    @Default(
      Creatures(
        name: '',
        people: People.human,
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
    )
    Creatures creature,
    @Default('') String gender,
    @Default(Job.none) Job job,
    @Default(Specialization.none) Specialization specialization,
    @Default(0) int fatePoints,
    @Default(1) int level,
    @Default(0) int currentLoad,
    @Default(0) int maxLoad,
    @Default(0) int intellect,
    @Default(0) int charisma,
    @Default(0) int dexterity,
    @Default(0) int strength,
    @Default(0) int physicalSpell,
    @Default(0) int psychicSpell,
    @Default(0) int engineer,
    @Default(0) int maxNaturalPR,
    @Default([]) List<Skill> skills,
    @Default([]) List<AddNaturalDamages> addNaturalDamages,
    @Default([]) List<AddSpellDamages> addSpellDamages,
    @Default([]) List<Item> items,
    int? modifyAttack,
    int? modifyThrowAttack,
    int? modifyParry,
    int? modifyCourage,
    int? modifyIntellect,
    int? modifyCharisma,
    int? modifyDexterity,
    int? modifyStrength,
  }) = _PlayerCharacter;

  // JSON serialization
  factory PlayerCharacter.fromJson(Map<String, dynamic> json) =>
      _$PlayerCharacterFromJson(json);

  // Private constructor for freezed
  const PlayerCharacter._();

  // Getters and setters
  String get name => creature.name;
  People get people => creature.people;
  int get healthPoints => creature.healthPoints;
  int get astralPoints => creature.astralPoints;
  int get experience => creature.experience;
  int get attack => creature.attack;
  int get throwAttack => creature.throwAttack;
  int get parry => creature.parry;
  int get courage => creature.courage;
  int get naturalPR => creature.naturalPR;
  int get magicPR => creature.magicPR;
  List<String> get weapons => creature.weapons;
  List<String> get armors => creature.armors;
  int get actualHealthPoints => creature.actualHealthPoints;
  int get actualAstralPoints => creature.actualAstralPoints;

  @override
  int get physicalSpell {
    final isSpellJob = Job.spellJobs.contains(job);
    return isSpellJob
        ? ((effectiveModifyIntellect + effectiveModifyDexterity) / 2).ceil()
        : 0;
  }

  @override
  int get psychicSpell {
    final isSpellJob = Job.spellJobs.contains(job);
    return isSpellJob
        ? ((effectiveModifyIntellect + effectiveModifyCharisma) / 2).ceil()
        : 0;
  }

  @override
  int get engineer {
    final isSpellJob = job == Job.engineer;
    return isSpellJob
        ? ((effectiveModifyIntellect + effectiveModifyDexterity) / 2).ceil()
        : 0;
  }

  int get spellResistance =>
      ((effectiveModifyCourage +
                  effectiveModifyIntellect +
                  effectiveModifyStrength) /
              3)
          .round();

  int get evade => dexterity;

  int get modifyEvade {
    switch (naturalPR) {
      case 0:
      case 1:
        return effectiveModifyDexterity + 1;
      case 2:
        return effectiveModifyDexterity;
      case 3:
      case 4:
        return effectiveModifyDexterity - 2;
      case 5:
        return effectiveModifyDexterity - 4;
      case 6:
        return effectiveModifyDexterity - 5;
      case 7:
        return effectiveModifyDexterity - 6;
      default:
        return -1;
    }
  }

  int get effectiveModifyAttack => modifyAttack ?? attack;
  PlayerCharacter withModifyAttack(int value) => copyWith(modifyAttack: value);

  int get effectiveModifyThrowAttack => modifyThrowAttack ?? throwAttack;
  PlayerCharacter withModifyThrowAttack(int value) =>
      copyWith(modifyThrowAttack: value);

  int get effectiveModifyParry => modifyParry ?? parry;
  PlayerCharacter withModifyParry(int value) => copyWith(modifyParry: value);

  int get effectiveModifyCourage => modifyCourage ?? courage;
  PlayerCharacter withModifyCourage(int value) =>
      copyWith(modifyCourage: value);

  int get effectiveModifyIntellect => modifyIntellect ?? intellect;
  PlayerCharacter withModifyIntellect(int value) {
    if (value > 12) {
      return copyWith(
        modifyIntellect: value,
        addSpellDamages: [
          ...addSpellDamages.where((e) => e.toString() != 'Intelligence (INT)'),
          _intellectSup(value),
        ],
      );
    }
    return copyWith(
      modifyIntellect: value,
    );
  }

  int get effectiveModifyCharisma => modifyCharisma ?? charisma;
  PlayerCharacter withModifyCharisma(int value) =>
      copyWith(modifyCharisma: value);

  int get effectiveModifyDexterity => modifyDexterity ?? dexterity;
  PlayerCharacter withModifyDexterity(int value) =>
      copyWith(modifyDexterity: value);

  int get effectiveModifyStrength => modifyStrength ?? strength;
  PlayerCharacter withModifyStrength(int value) {
    if (value < 9 || value > 12) {
      return copyWith(
        modifyStrength: value,
        addNaturalDamages: [
          ...addNaturalDamages.where((e) => e.toString() != 'Force (FO)'),
          _strengthSup(value),
        ],
      );
    }
    return copyWith(
      modifyStrength: value,
    );
  }

  AddSpellDamages _intellectSup(int value) {
    return AddSpellDamages(
      damages: value - 12,
      txtDamages: 'Intelligence (INT)',
    );
  }

  AddNaturalDamages _strengthSup(int value) {
    int damageValue;
    if (value > 12) {
      damageValue = value - 12;
    } else if (value < 9) {
      damageValue = -1;
    } else {
      damageValue = 0;
    }
    return AddNaturalDamages(
      damages: damageValue,
      txtDamages: 'Force (FO)',
    );
  }
}
