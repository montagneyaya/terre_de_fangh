import 'package:json_annotation/json_annotation.dart';
part 'add-spell-damages.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AddSpellDamages {
  String txtDamages = '';
  int damages = 0;

  AddSpellDamages(this.damages);

  @override
  String toString() {
    return '$txtDamages';
  }

  factory AddSpellDamages.fromJson(Map<String, dynamic> json) => _$AddSpellDamagesFromJson(json);
  Map<String, dynamic> toJson() => _$AddSpellDamagesToJson(this);
}
