import 'package:json_annotation/json_annotation.dart';
part 'add_spell_damages.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AddSpellDamages {

  AddSpellDamages(this.damages);

  factory AddSpellDamages.fromJson(Map<String, dynamic> json) => _$AddSpellDamagesFromJson(json);
  String txtDamages = '';
  int damages = 0;

  @override
  String toString() {
    return txtDamages;
  }
  Map<String, dynamic> toJson() => _$AddSpellDamagesToJson(this);
}
