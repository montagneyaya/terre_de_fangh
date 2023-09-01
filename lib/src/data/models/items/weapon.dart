import 'package:terre_de_fangh/src/data/models/items/item.dart';
import 'package:terre_de_fangh/src/data/models/items/items-type.enum.dart';
import 'package:terre_de_fangh/src/data/resources/services/dices.service.dart';
import 'package:json_annotation/json_annotation.dart';
part 'weapon.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Weapon extends Item {
  Impact impactPoint;
  int breakFight = 6;

  Weapon(String nameItem, int price, int weight, ItemsType type, this.impactPoint, this.breakFight)
      : super(nameItem, price, weight, type);

  factory Weapon.fromJson(Map<String, dynamic> json) => _$WeaponFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$WeaponToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Impact {
  int nbD = 1;
  int addDamages = 0;

  Impact(this.nbD, this.addDamages);

  int impact() {
    return Dices().d6() * nbD + addDamages;
  }

  @override
  String toString() {
    return '$nbD D + $addDamages';
  }

  factory Impact.fromJson(Map<String, dynamic> json) => _$ImpactFromJson(json);
  Map<String, dynamic> toJson() => _$ImpactToJson(this);
}
