import 'package:json_annotation/json_annotation.dart';
import 'package:terre_de_fangh/src/data/models/items/items_type.enum.dart';

part 'item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Item {
  Item(this.nameItem, this.price, this.weight, this.type);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  String nameItem = '';
  int price = 0;
  int weight = 0;
  ItemsType type = ItemsType.itemsTypeMiscellaneous;

  @override
  String toString() {
    return nameItem;
  }
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
