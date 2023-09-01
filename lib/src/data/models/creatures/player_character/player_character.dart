import 'package:terre_de_fangh/src/data/models/creatures/player_character/jobs.enum.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/skill.dart';
import 'package:terre_de_fangh/src/data/models/creatures/creatures.dart';
import 'package:terre_de_fangh/src/data/models/items/armor.dart';
import 'package:terre_de_fangh/src/data/models/items/weapon.dart';
import 'package:terre_de_fangh/src/data/resources/modifiers/add_natural_damages.dart';
import 'package:terre_de_fangh/src/data/resources/modifiers/add_spell_damages.dart';
import 'package:terre_de_fangh/src/data/models/items/item.dart';
import 'package:json_annotation/json_annotation.dart';
part 'player_character.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlayerCharacter extends Creatures {
  PlayerCharacter(
    String nameCreature,
    this.gender,
    String people,
    this.job,
    this.specialization,
    int healthPoints,
    int astralPoints,
    this.fatePoints,
    this.maxLoad,
    int attack,
    int parry,
    int courage,
    this.intellect,
    this.charisma,
    this.dexterity,
    this.strength,
    this.maxNaturalPR,
    this.skills,
  ) {
    this.nameCreature = nameCreature;
    this.people = people;
    this.healthPoints = healthPoints;
    this.astralPoints = astralPoints;
    this.attack = attack;
    throwAttack = dexterity;
    this.parry = parry;
    evade = dexterity;
    this.courage = courage;
    spellResistance = ((courage + intellect + strength) / 3).round().toInt();
    if (job == jobWizard.job || job == jobCleric.job || job == jobPaladin.job) {
      physicalSpell = ((intellect + dexterity) / 2).ceil().toInt();
      psychicSpell = ((intellect + charisma) / 2).ceil().toInt();
    }
    if (job == jobEngineer.job) engineer = ((intellect + dexterity) / 2).ceil().toInt();
    actualHealthPoints = healthPoints;
    actualAstralPoints = astralPoints;
  }

  String gender = '';
  String job = 'Aucun';
  String specialization = 'Aucune';
  int fatePoints = 0;
  int level = 1;
  int currentLoad = 0;
  int maxLoad = 0;
  int maxNaturalPR = 0;
  int _naturalPR = 0;
  List<Skill> skills = [];
  int intellect = 0;
  int charisma = 0;
  int dexterity = 0;
  int strength = 0;
  int physicalSpell = 0;
  int psychicSpell = 0;
  int engineer = 0;
  List<AddNaturalDamages> addNaturalDamages = [];
  List<AddSpellDamages> addSpellDamages = [];
  List<Item> other = [];
  int modifyAttack = 0;
  int modifyThrowAttack = 0;
  int modifyParry = 0;
  int modifyEvade = 0;
  int _modifyCourage = 0;
  int _modifyIntellect = 0;
  int _modifyCharisma = 0;
  int _modifyDexterity = 0;
  int _modifyStrength = 0;

  @override
  int get naturalPR => _naturalPR;
  @override
  set naturalPR(int value) {
    _naturalPR = value;
    switch (value) {
      case 0:
      case 1:
        modifyEvade = modifyDexterity + 1;
        break;
      case 2:
        modifyEvade = modifyDexterity;
        break;
      case 3:
      case 4:
        modifyEvade = modifyDexterity - 2;
        break;
      case 5:
        modifyEvade = modifyDexterity - 4;
        break;
      case 6:
        modifyEvade = modifyDexterity - 5;
        break;
      case 7:
        modifyEvade = modifyDexterity - 6;
        break;
      default:
        modifyEvade = -1;
    }
  }

  int get modifyCourage => _modifyCourage;
  set modifyCourage(int value) {
    _modifyCourage = value;
    spellResistance = ((value + modifyIntellect + modifyStrength) / 3).ceil();
  }

  int get modifyIntellect => _modifyIntellect;
  set modifyIntellect(int value) {
    _modifyIntellect = value;
    if (job == jobCleric.job || job == jobWizard.job || job == jobPaladin.job) {
      physicalSpell = ((value + modifyDexterity) / 2).ceil();
      psychicSpell = ((value + modifyCharisma) / 2).ceil();
    }
    if (job == jobEngineer.job) {
      engineer = ((value + modifyDexterity) / 2).ceil();
    }
    spellResistance = ((modifyCourage + value + modifyStrength) / 3).ceil();
    if (value > 12) {
      addSpellDamages.where((element) => element.txtDamages == 'intelligence (INT)').forEach((element) {
        addSpellDamages.remove(element);
      });
      addSpellDamages.add(_intellectSup(value));
    }
  }

  int get modifyCharisma => _modifyCharisma;
  set modifyCharisma(int value) {
    _modifyCharisma = value;
    if (job == jobCleric.job || job == jobWizard.job || job == jobPaladin.job) {
      psychicSpell = ((modifyIntellect + value) / 2).ceil();
    }
  }

  int get modifyDexterity => _modifyDexterity;
  set modifyDexterity(int value) {
    _modifyDexterity = value;
    if (job == jobCleric.job || job == jobWizard.job || job == jobPaladin.job) {
      physicalSpell = ((modifyIntellect + value) / 2).ceil();
    }
    if (job == jobEngineer.job) {
      engineer = ((modifyIntellect + value) / 2).ceil();
    }
  }

  int get modifyStrength => _modifyStrength;
  set modifyStrength(int value) {
    _modifyStrength = value;
    spellResistance = ((modifyCourage + modifyIntellect + value) / 3).ceil();
    if (value < 9 || value > 12) {
      addNaturalDamages.where((element) => element.txtDamages == 'Force (FO)').forEach((element) {
        addNaturalDamages.remove(element);
      });
      addNaturalDamages.add(_strengthSup(value));
    }
  }

  AddSpellDamages _intellectSup(int value) {
    AddSpellDamages? addIntellectDamages;
    addIntellectDamages!.txtDamages = 'Intelligence (INT)';
    addIntellectDamages.damages = value - 12;
    return addIntellectDamages;
  }

  AddNaturalDamages _strengthSup(int value) {
    AddNaturalDamages? addStrengthDamages;
    addStrengthDamages!.txtDamages = 'Force (FO)';
    if (value > 12) addStrengthDamages.damages = value - 12;
    if (value < 9) addStrengthDamages.damages = -1;
    return addStrengthDamages;
  }

  factory PlayerCharacter.fromJson(Map<String, dynamic> json) => _$PlayerCharacterFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerCharacterToJson(this);
}
