import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
abstract class Item with _$Item {
  const factory Item({
    @Default('') String name,
    @Default(0) int price,
    @Default(0) int weight,
    @Default(ItemType.miscellaneous) ItemType type,
  }) = _Item;

  // JSON serialization
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  // Private constructor for freezed
  const Item._();
}

enum ItemType {
  coin,
  ingot,
  gem,
  beverage,
  food,
  bag,
  purse,
  miscellaneous,
  bivouac,
  clothing,
  elfThing,
  armor,
  weapon,
  magicObject,
  chargedObject,
  potionOrPoison,
  ammunition,
  book,
  ingredient,
}
