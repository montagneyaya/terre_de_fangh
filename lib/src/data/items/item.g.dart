// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Item _$ItemFromJson(Map<String, dynamic> json) => _Item(
  name: json['name'] as String? ?? '',
  price: (json['price'] as num?)?.toInt() ?? 0,
  weight: (json['weight'] as num?)?.toInt() ?? 0,
  type:
      $enumDecodeNullable(_$ItemTypeEnumMap, json['type']) ??
      ItemType.miscellaneous,
);

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
  'name': instance.name,
  'price': instance.price,
  'weight': instance.weight,
  'type': _$ItemTypeEnumMap[instance.type]!,
};

const _$ItemTypeEnumMap = {
  ItemType.coin: 'coin',
  ItemType.ingot: 'ingot',
  ItemType.gem: 'gem',
  ItemType.beverage: 'beverage',
  ItemType.food: 'food',
  ItemType.bag: 'bag',
  ItemType.purse: 'purse',
  ItemType.miscellaneous: 'miscellaneous',
  ItemType.bivouac: 'bivouac',
  ItemType.clothing: 'clothing',
  ItemType.elfThing: 'elfThing',
  ItemType.armor: 'armor',
  ItemType.weapon: 'weapon',
  ItemType.magicObject: 'magicObject',
  ItemType.chargedObject: 'chargedObject',
  ItemType.potionOrPoison: 'potionOrPoison',
  ItemType.ammunition: 'ammunition',
  ItemType.book: 'book',
  ItemType.ingredient: 'ingredient',
};
