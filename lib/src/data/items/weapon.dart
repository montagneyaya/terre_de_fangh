import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/src/data/items/item.dart';
import 'package:myapp/src/data/services/dices.dart';

part 'weapon.freezed.dart';
part 'weapon.g.dart';

@freezed
abstract class Weapon with _$Weapon {
  const factory Weapon({
    @Default(
      Item(
        name: '',
        price: 0,
        weight: 0,
        type: ItemType.weapon,
      ),
    )
    Item item,
    @Default(Impact()) Impact impactPoint,
    @Default(0) int breakFight,
  }) = _Weapon;

  // JSON serialization
  factory Weapon.fromJson(Map<String, dynamic> json) => _$WeaponFromJson(json);

  // Private constructor for freezed
  const Weapon._();

  // Getters
  String get name => item.name;
  int get price => item.price;
  int get weight => item.weight;
  ItemType get type => item.type;
}

@freezed
abstract class Impact with _$Impact {
  const factory Impact({
    @Default(0) int nbD,
    @Default(0) int addDamages,
  }) = _Impact;

  // JSON serialization
  factory Impact.fromJson(Map<String, dynamic> json) => _$ImpactFromJson(json);

  // Private constructor for freezed
  const Impact._();

  int impact() {
    return Dices().d6() * nbD + addDamages;
  }

  @override
  String toString() {
    return '$nbD D + $addDamages';
  }
}
