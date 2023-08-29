import 'package:json_annotation/json_annotation.dart';
part 'add-natural-damages.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AddNaturalDamages {
  String txtDamages = '';
  int damages = 0;

  AddNaturalDamages(this.damages);

  @override
  String toString() {
    return '$txtDamages';
  }

  factory AddNaturalDamages.fromJson(Map<String, dynamic> json) => _$AddNaturalDamagesFromJson(json);
  Map<String, dynamic> toJson() => _$AddNaturalDamagesToJson(this);
}
