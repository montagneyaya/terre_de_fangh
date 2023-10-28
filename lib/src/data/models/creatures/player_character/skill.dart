import 'package:json_annotation/json_annotation.dart';
part 'skill.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Skill {
  Skill(this.skill, this.described, {this.selected = false});

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

  String skill;
  String described;
  bool selected;

  bool get check => selected;
  set check(bool check) {
    selected = check;
  }

  @override
  String toString() {
    return skill;
  }
  Map<String, dynamic> toJson() => _$SkillToJson(this);
}
