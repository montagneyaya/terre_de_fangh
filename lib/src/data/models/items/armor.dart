import 'package:terre_de_fangh/src/data/models/items/item.dart';
import 'package:terre_de_fangh/src/data/models/items/items-type.enum.dart';
import 'package:terre_de_fangh/src/data/models/creatures/locations.enum.dart';
import 'package:json_annotation/json_annotation.dart';
part 'armor.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Armor extends Item {
  Armor(String nameItem, int price, int weight, ItemsType type, this.location, this.naturalPR,
      this.magicPR, this.breakFight)
      : super(nameItem, price, weight, type);

  Location location;
  int naturalPR = 0;
  int magicPR = 0;
  int breakFight = 6;

  factory Armor.fromJson(Map<String, dynamic> json) => _$ArmorFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ArmorToJson(this);
}
