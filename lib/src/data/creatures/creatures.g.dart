// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creatures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Creatures _$CreaturesFromJson(Map<String, dynamic> json) => _Creatures(
  name: json['name'] as String? ?? '',
  people: json['people'] == null
      ? People.monster
      : People.fromJson(json['people'] as Map<String, dynamic>),
  healthPoints: (json['healthPoints'] as num?)?.toInt() ?? 0,
  astralPoints: (json['astralPoints'] as num?)?.toInt() ?? 0,
  experience: (json['experience'] as num?)?.toInt() ?? 0,
  attack: (json['attack'] as num?)?.toInt() ?? 0,
  throwAttack: (json['throwAttack'] as num?)?.toInt() ?? 0,
  parry: (json['parry'] as num?)?.toInt() ?? 0,
  evade: (json['evade'] as num?)?.toInt() ?? 0,
  spellResistance: (json['spellResistance'] as num?)?.toInt() ?? 0,
  courage: (json['courage'] as num?)?.toInt() ?? 0,
  naturalPR: (json['naturalPR'] as num?)?.toInt() ?? 0,
  magicPR: (json['magicPR'] as num?)?.toInt() ?? 0,
  weapons:
      (json['weapons'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  armors:
      (json['armors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  actualHealthPoints: (json['actualHealthPoints'] as num?)?.toInt() ?? 0,
  actualAstralPoints: (json['actualAstralPoints'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$CreaturesToJson(_Creatures instance) =>
    <String, dynamic>{
      'name': instance.name,
      'people': instance.people,
      'healthPoints': instance.healthPoints,
      'astralPoints': instance.astralPoints,
      'experience': instance.experience,
      'attack': instance.attack,
      'throwAttack': instance.throwAttack,
      'parry': instance.parry,
      'evade': instance.evade,
      'spellResistance': instance.spellResistance,
      'courage': instance.courage,
      'naturalPR': instance.naturalPR,
      'magicPR': instance.magicPR,
      'weapons': instance.weapons,
      'armors': instance.armors,
      'actualHealthPoints': instance.actualHealthPoints,
      'actualAstralPoints': instance.actualAstralPoints,
    };
