import 'package:terre_de_fangh/src/data/models/creatures/player-character/jobs.enum.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player-character/skill.dart';
import 'package:terre_de_fangh/src/data/models/creatures/creatures.dart';
import 'package:terre_de_fangh/src/data/models/items/armor.dart';
import 'package:terre_de_fangh/src/data/models/items/weapon.dart';
import 'package:terre_de_fangh/src/data/resources/modifiers/add-natural-damages.dart';
import 'package:terre_de_fangh/src/data/resources/modifiers/add-spell-damages.dart';
import 'package:terre_de_fangh/src/data/models/items/item.dart';
import 'package:json_annotation/json_annotation.dart';
part 'player-character.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PlayerCharacter extends Creatures {
  PlayerCharacter(
    String nameCreature,
    String gender,
    String people,
    String job,
    String specialization,
    int healthPoints,
    int astralPoints,
    int fatePoints,
    int maxLoad,
    int attack,
    int parry,
    int courage,
    int intellect,
    int charisma,
    int dexterity,
    int strength,
    int maxNaturalPR,
    List<Skill> skills,
  ) {
    this.nameCreature = nameCreature;
    this.gender = gender;
    this.people = people;
    this.job = job;
    this.specialization = specialization;
    this.healthPoints = healthPoints;
    this.astralPoints = astralPoints;
    this.fatePoints = fatePoints;
    this.maxLoad = maxLoad;
    this.attack = attack;
    this.throwAttack = dexterity;
    this.parry = parry;
    this.evade = dexterity;
    this.courage = courage;
    this.intellect = intellect;
    this.charisma = charisma;
    this.dexterity = dexterity;
    this.strength = strength;
    this.spellResistance = ((courage + intellect + strength) / 3).round().toInt();
    if (job == jobWizard.job || job == jobCleric.job || job == jobPaladin.job) {
      this.physicalSpell = ((intellect + dexterity) / 2).ceil().toInt();
      this.psychicSpell = ((intellect + charisma) / 2).ceil().toInt();
    }
    if (job == jobEngineer.job) this.engineer = ((intellect + dexterity) / 2).ceil().toInt();
    this.actualHealthPoints = healthPoints;
    this.actualAstralPoints = astralPoints;
    this.maxNaturalPR = maxNaturalPR;
    this.skills = skills;
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

  int get naturalPR => this._naturalPR;
  set naturalPR(int value) {
    this._naturalPR = value;
    switch (value) {
      case 0:
      case 1:
        this.modifyEvade = this.modifyDexterity + 1;
        break;
      case 2:
        this.modifyEvade = this.modifyDexterity;
        break;
      case 3:
      case 4:
        this.modifyEvade = this.modifyDexterity - 2;
        break;
      case 5:
        this.modifyEvade = this.modifyDexterity - 4;
        break;
      case 6:
        this.modifyEvade = this.modifyDexterity - 5;
        break;
      case 7:
        this.modifyEvade = this.modifyDexterity - 6;
        break;
      default:
        this.modifyEvade = -1;
    }
  }

  int get modifyCourage => this._modifyCourage;
  set modifyCourage(int value) {
    this._modifyCourage = value;
    this.spellResistance = ((value + this.modifyIntellect + this.modifyStrength) / 3).ceil();
  }

  int get modifyIntellect => this._modifyIntellect;
  set modifyIntellect(int value) {
    this._modifyIntellect = value;
    if (this.job == jobCleric.job || this.job == jobWizard.job || this.job == jobPaladin.job) {
      this.physicalSpell = ((value + this.modifyDexterity) / 2).ceil();
      this.psychicSpell = ((value + this.modifyCharisma) / 2).ceil();
    }
    if (this.job == jobEngineer.job) {
      this.engineer = ((value + this.modifyDexterity) / 2).ceil();
    }
    this.spellResistance = ((this.modifyCourage + value + this.modifyStrength) / 3).ceil();
    if (value > 12) {
      this
          .addSpellDamages
          .where((element) => element.txtDamages == 'intelligence (INT)')
          .forEach((element) {
        this.addSpellDamages.remove(element);
      });
      this.addSpellDamages.add(this._intellectSup(value));
    }
  }

  int get modifyCharisma => this._modifyCharisma;
  set modifyCharisma(int value) {
    this._modifyCharisma = value;
    if (this.job == jobCleric.job || this.job == jobWizard.job || this.job == jobPaladin.job) {
      this.psychicSpell = ((this.modifyIntellect + value) / 2).ceil();
    }
  }

  int get modifyDexterity => this._modifyDexterity;
  set modifyDexterity(int value) {
    this._modifyDexterity = value;
    if (this.job == jobCleric.job || this.job == jobWizard.job || this.job == jobPaladin.job) {
      this.physicalSpell = ((this.modifyIntellect + value) / 2).ceil();
    }
    if (this.job == jobEngineer.job) {
      this.engineer = ((this.modifyIntellect + value) / 2).ceil();
    }
  }

  int get modifyStrength => this._modifyStrength;
  set modifyStrength(int value) {
    this._modifyStrength = value;
    this.spellResistance = ((this.modifyCourage + this.modifyIntellect + value) / 3).ceil();
    if (value < 9 || value > 12) {
      this.addNaturalDamages.where((element) => element.txtDamages == 'Force (FO)').forEach((element) {
        this.addNaturalDamages.remove(element);
      });
      this.addNaturalDamages.add(this._strengthSup(value));
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
