import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/src/data/creatures/body_location.enum.dart';
import 'package:myapp/src/data/items/item.dart';

part 'armor.freezed.dart';
part 'armor.g.dart';

@freezed
abstract class Armor with _$Armor {
  const factory Armor({
    @Default(
      Item(
        name: '',
        price: 0,
        weight: 0,
        type: ItemType.armor,
      ),
    )
    Item item,
    @Default(0) int naturalPR,
    @Default(0) int magicPR,
    @Default(0) int breakFight,
    @Default(BodyLocation.head) BodyLocation bodyLocation,
  }) = _Armor;

  // JSON serialization
  factory Armor.fromJson(Map<String, dynamic> json) => _$ArmorFromJson(json);

  // Private constructor for freezed
  const Armor._();

  // Getters
  String get name => item.name;
  int get price => item.price;
  int get weight => item.weight;
  ItemType get type => item.type;
}
