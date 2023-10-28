import 'package:json_annotation/json_annotation.dart';
import 'package:terre_de_fangh/src/data/models/items/item.dart';
import 'package:terre_de_fangh/src/data/models/items/items_type.enum.dart';
import 'package:terre_de_fangh/src/data/resources/services/dices.service.dart';

part 'weapon.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Weapon extends Item {

  Weapon(super.nameItem, super.price, super.weight, super.type, this.impactPoint, this.breakFight);

  factory Weapon.fromJson(Map<String, dynamic> json) => _$WeaponFromJson(json);
  Impact impactPoint;
  int breakFight = 6;
  @override
  Map<String, dynamic> toJson() => _$WeaponToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Impact {

  Impact(this.nbD, this.addDamages);

  factory Impact.fromJson(Map<String, dynamic> json) => _$ImpactFromJson(json);
  int nbD = 1;
  int addDamages = 0;

  int impact() {
    return Dices().d6() * nbD + addDamages;
  }

  @override
  String toString() {
    return '$nbD D + $addDamages';
  }
  Map<String, dynamic> toJson() => _$ImpactToJson(this);
}
