// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'armor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Armor _$ArmorFromJson(Map<String, dynamic> json) => _Armor(
  item: json['item'] == null
      ? const Item(name: '', price: 0, weight: 0, type: ItemType.armor)
      : Item.fromJson(json['item'] as Map<String, dynamic>),
  naturalPR: (json['naturalPR'] as num?)?.toInt() ?? 0,
  magicPR: (json['magicPR'] as num?)?.toInt() ?? 0,
  breakFight: (json['breakFight'] as num?)?.toInt() ?? 0,
  bodyLocation:
      $enumDecodeNullable(_$BodyLocationEnumMap, json['bodyLocation']) ??
      BodyLocation.head,
);

Map<String, dynamic> _$ArmorToJson(_Armor instance) => <String, dynamic>{
  'item': instance.item,
  'naturalPR': instance.naturalPR,
  'magicPR': instance.magicPR,
  'breakFight': instance.breakFight,
  'bodyLocation': _$BodyLocationEnumMap[instance.bodyLocation]!,
};

const _$BodyLocationEnumMap = {
  BodyLocation.head: 'head',
  BodyLocation.arms: 'arms',
  BodyLocation.hands: 'hands',
  BodyLocation.chest: 'chest',
  BodyLocation.shield: 'shield',
  BodyLocation.legs: 'legs',
  BodyLocation.feet: 'feet',
};
