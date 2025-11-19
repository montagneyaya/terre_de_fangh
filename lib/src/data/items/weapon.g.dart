// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Weapon _$WeaponFromJson(Map<String, dynamic> json) => _Weapon(
  item: json['item'] == null
      ? const Item(name: '', price: 0, weight: 0, type: ItemType.weapon)
      : Item.fromJson(json['item'] as Map<String, dynamic>),
  impactPoint: json['impactPoint'] == null
      ? const Impact()
      : Impact.fromJson(json['impactPoint'] as Map<String, dynamic>),
  breakFight: (json['breakFight'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$WeaponToJson(_Weapon instance) => <String, dynamic>{
  'item': instance.item,
  'impactPoint': instance.impactPoint,
  'breakFight': instance.breakFight,
};

_Impact _$ImpactFromJson(Map<String, dynamic> json) => _Impact(
  nbD: (json['nbD'] as num?)?.toInt() ?? 0,
  addDamages: (json['addDamages'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ImpactToJson(_Impact instance) => <String, dynamic>{
  'nbD': instance.nbD,
  'addDamages': instance.addDamages,
};
