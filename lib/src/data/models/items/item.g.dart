// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      json['name_item'] as String,
      json['price'] as int,
      json['weight'] as int,
      $enumDecode(_$ItemsTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'name_item': instance.nameItem,
      'price': instance.price,
      'weight': instance.weight,
      'type': _$ItemsTypeEnumMap[instance.type],
    };

const _$ItemsTypeEnumMap = {
  ItemsType.itemsTypeMoney: 'itemsTypeMoney',
  ItemsType.itemsTypeBeverage: 'itemsTypeBeverage',
  ItemsType.itemsTypeFood: 'itemsTypeFood',
  ItemsType.itemsTypeBag: 'itemsTypeBag',
  ItemsType.itemsTypePurse: 'itemsTypePurse',
  ItemsType.itemsTypeMiscellaneous: 'itemsTypeMiscellaneous',
  ItemsType.itemsTypeBivouac: 'itemsTypeBivouac',
  ItemsType.itemsTypeClothes: 'itemsTypeClothes',
  ItemsType.itemsTypeElfThings: 'itemsTypeElfThings',
};
