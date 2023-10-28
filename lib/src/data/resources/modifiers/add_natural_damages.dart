import 'package:json_annotation/json_annotation.dart';
part 'add_natural_damages.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AddNaturalDamages {

  AddNaturalDamages(this.damages);

  factory AddNaturalDamages.fromJson(Map<String, dynamic> json) => _$AddNaturalDamagesFromJson(json);
  String txtDamages = '';
  int damages = 0;

  @override
  String toString() {
    return txtDamages;
  }
  Map<String, dynamic> toJson() => _$AddNaturalDamagesToJson(this);
}
