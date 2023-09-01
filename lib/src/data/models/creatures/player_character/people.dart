import 'package:terre_de_fangh/src/data/models/creatures/player_character/job.dart';
import 'package:terre_de_fangh/src/data/models/creatures/player_character/skill.dart';
import 'package:json_annotation/json_annotation.dart';
part 'people.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class People {
  People(
      this.people,
      this.courage,
      this.intellect,
      this.charisma,
      this.dexterity,
      this.strength,
      this.attack,
      this.parry,
      this.hp,
      this.pr,
      this.load,
      this.jobs,
      this.birthSkills,
      this.optionalSkills);

  String people;
  List<int> courage;
  List<int> intellect;
  List<int> charisma;
  List<int> dexterity;
  List<int> strength;
  int attack;
  int parry;
  int hp;
  int pr;
  int load;
  List<Job> jobs;
  List<Skill> birthSkills;
  List<Skill> optionalSkills;

  List<List<int>> statistics() {
    return [courage, intellect, charisma, dexterity, strength];
  }

  List<int> fight() {
    return [attack, parry];
  }

  @override
  String toString() {
    return people;
  }

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
  Map<String, dynamic> toJson() => _$PeopleToJson(this);
}
