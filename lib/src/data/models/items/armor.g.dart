// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'armor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Armor _$ArmorFromJson(Map<String, dynamic> json) => Armor(
      json['name_item'] as String,
      json['price'] as int,
      json['weight'] as int,
      $enumDecode(_$ItemsTypeEnumMap, json['type']),
      $enumDecode(_$LocationEnumMap, json['location']),
      json['natural_p_r'] as int,
      json['magic_p_r'] as int,
      json['break_fight'] as int,
    );

Map<String, dynamic> _$ArmorToJson(Armor instance) => <String, dynamic>{
      'name_item': instance.nameItem,
      'price': instance.price,
      'weight': instance.weight,
      'type': _$ItemsTypeEnumMap[instance.type],
      'location': _$LocationEnumMap[instance.location],
      'natural_p_r': instance.naturalPR,
      'magic_p_r': instance.magicPR,
      'break_fight': instance.breakFight,
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

const _$LocationEnumMap = {
  Location.locationHead: 'locationHead',
  Location.locationArms: 'locationArms',
  Location.locationHands: 'locationHands',
  Location.locationChest: 'locationChest',
  Location.locationShield: 'locationShield',
  Location.locationLegs: 'locationLegs',
  Location.locationFeet: 'locationFeet',
};
