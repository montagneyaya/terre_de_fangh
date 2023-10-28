import 'package:json_annotation/json_annotation.dart';
import 'package:terre_de_fangh/src/data/models/creatures/locations.enum.dart';
import 'package:terre_de_fangh/src/data/models/items/item.dart';
import 'package:terre_de_fangh/src/data/models/items/items_type.enum.dart';

part 'armor.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Armor extends Item {
  Armor(super.nameItem, super.price, super.weight, super.type, this.location, this.naturalPR,
      this.magicPR, this.breakFight,);

  factory Armor.fromJson(Map<String, dynamic> json) => _$ArmorFromJson(json);

  Location location;
  int naturalPR = 0;
  int magicPR = 0;
  int breakFight = 6;
  @override
  Map<String, dynamic> toJson() => _$ArmorToJson(this);
}
