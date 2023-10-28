import 'package:json_annotation/json_annotation.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/skill.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/specialization.dart';

part 'job.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Job {
  Job(
      this.job,
      this.courage,
      this.intellect,
      this.charisma,
      this.dexterity,
      this.strength,
      this.attack,
      this.parry,
      this.hp,
      this.ap,
      this.pr,
      this.specialization,
      this.inheritedSkills,
      this.optionalSkills,);

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  String job;
  List<int> courage;
  List<int> intellect;
  List<int> charisma;
  List<int> dexterity;
  List<int> strength;
  int attack;
  int parry;
  int hp;
  int ap;
  int pr;
  List<Specialization> specialization;
  List<Skill> inheritedSkills;
  List<Skill> optionalSkills;

  List<List<int>> statistics() {
    return [courage, intellect, charisma, dexterity, strength];
  }

  List<int> fight() {
    return [attack, parry];
  }

  List<int> points() {
    return [hp, ap];
  }

  @override
  String toString() {
    return job;
  }
  Map<String, dynamic> toJson() => _$JobToJson(this);
}
