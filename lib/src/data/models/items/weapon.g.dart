// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weapon _$WeaponFromJson(Map<String, dynamic> json) => Weapon(
      json['name_item'] as String,
      json['price'] as int,
      json['weight'] as int,
      $enumDecode(_$ItemsTypeEnumMap, json['type']),
      Impact.fromJson(json['impact_point'] as Map<String, dynamic>),
      json['break_fight'] as int,
    );

Map<String, dynamic> _$WeaponToJson(Weapon instance) => <String, dynamic>{
      'name_item': instance.nameItem,
      'price': instance.price,
      'weight': instance.weight,
      'type': _$ItemsTypeEnumMap[instance.type],
      'impact_point': instance.impactPoint.toJson(),
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

Impact _$ImpactFromJson(Map<String, dynamic> json) => Impact(
      json['nb_d'] as int,
      json['add_damages'] as int,
    );

Map<String, dynamic> _$ImpactToJson(Impact instance) => <String, dynamic>{
      'nb_d': instance.nbD,
      'add_damages': instance.addDamages,
    };
