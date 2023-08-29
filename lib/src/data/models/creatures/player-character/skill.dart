import 'package:json_annotation/json_annotation.dart';
part 'skill.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Skill {
  Skill(this.skill, this.described, this.selected);

  String skill;
  String described;
  bool selected;

  void isSelect(bool _check) {
    this.selected = _check;
  }

  @override
  String toString() {
    return this.skill;
  }

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
  Map<String, dynamic> toJson() => _$SkillToJson(this);
}
