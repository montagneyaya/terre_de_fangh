import 'package:terre_de_fangh/src/data/models/items/items-type.enum.dart';
import 'package:json_annotation/json_annotation.dart';
part 'item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Item {
  Item(this.nameItem, this.price, this.weight, this.type);

  String nameItem = '';
  int price = 0;
  int weight = 0;
  ItemsType type = ItemsType.itemsTypeMiscellaneous;

  @override
  String toString() {
    return nameItem;
  }

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
