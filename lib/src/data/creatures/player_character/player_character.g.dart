// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlayerCharacter _$PlayerCharacterFromJson(
  Map<String, dynamic> json,
) => _PlayerCharacter(
  creature: json['creature'] == null
      ? const Creatures(
          name: '',
          people: People.human,
          healthPoints: 0,
          astralPoints: 0,
          experience: 0,
          attack: 0,
          throwAttack: 0,
          parry: 0,
          evade: 0,
          spellResistance: 0,
          courage: 0,
          naturalPR: 0,
          magicPR: 0,
          weapons: [],
          armors: [],
          actualHealthPoints: 0,
          actualAstralPoints: 0,
        )
      : Creatures.fromJson(json['creature'] as Map<String, dynamic>),
  gender: json['gender'] as String? ?? '',
  job: json['job'] == null
      ? Job.none
      : Job.fromJson(json['job'] as Map<String, dynamic>),
  specialization: json['specialization'] == null
      ? Specialization.none
      : Specialization.fromJson(json['specialization'] as Map<String, dynamic>),
  fatePoints: (json['fatePoints'] as num?)?.toInt() ?? 0,
  level: (json['level'] as num?)?.toInt() ?? 1,
  currentLoad: (json['currentLoad'] as num?)?.toInt() ?? 0,
  maxLoad: (json['maxLoad'] as num?)?.toInt() ?? 0,
  intellect: (json['intellect'] as num?)?.toInt() ?? 0,
  charisma: (json['charisma'] as num?)?.toInt() ?? 0,
  dexterity: (json['dexterity'] as num?)?.toInt() ?? 0,
  strength: (json['strength'] as num?)?.toInt() ?? 0,
  physicalSpell: (json['physicalSpell'] as num?)?.toInt() ?? 0,
  psychicSpell: (json['psychicSpell'] as num?)?.toInt() ?? 0,
  engineer: (json['engineer'] as num?)?.toInt() ?? 0,
  maxNaturalPR: (json['maxNaturalPR'] as num?)?.toInt() ?? 0,
  skills:
      (json['skills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  addNaturalDamages:
      (json['addNaturalDamages'] as List<dynamic>?)
          ?.map((e) => AddNaturalDamages.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  addSpellDamages:
      (json['addSpellDamages'] as List<dynamic>?)
          ?.map((e) => AddSpellDamages.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  modifyAttack: (json['modifyAttack'] as num?)?.toInt(),
  modifyThrowAttack: (json['modifyThrowAttack'] as num?)?.toInt(),
  modifyParry: (json['modifyParry'] as num?)?.toInt(),
  modifyCourage: (json['modifyCourage'] as num?)?.toInt(),
  modifyIntellect: (json['modifyIntellect'] as num?)?.toInt(),
  modifyCharisma: (json['modifyCharisma'] as num?)?.toInt(),
  modifyDexterity: (json['modifyDexterity'] as num?)?.toInt(),
  modifyStrength: (json['modifyStrength'] as num?)?.toInt(),
);

Map<String, dynamic> _$PlayerCharacterToJson(_PlayerCharacter instance) =>
    <String, dynamic>{
      'creature': instance.creature,
      'gender': instance.gender,
      'job': instance.job,
      'specialization': instance.specialization,
      'fatePoints': instance.fatePoints,
      'level': instance.level,
      'currentLoad': instance.currentLoad,
      'maxLoad': instance.maxLoad,
      'intellect': instance.intellect,
      'charisma': instance.charisma,
      'dexterity': instance.dexterity,
      'strength': instance.strength,
      'physicalSpell': instance.physicalSpell,
      'psychicSpell': instance.psychicSpell,
      'engineer': instance.engineer,
      'maxNaturalPR': instance.maxNaturalPR,
      'skills': instance.skills,
      'addNaturalDamages': instance.addNaturalDamages,
      'addSpellDamages': instance.addSpellDamages,
      'items': instance.items,
      'modifyAttack': instance.modifyAttack,
      'modifyThrowAttack': instance.modifyThrowAttack,
      'modifyParry': instance.modifyParry,
      'modifyCourage': instance.modifyCourage,
      'modifyIntellect': instance.modifyIntellect,
      'modifyCharisma': instance.modifyCharisma,
      'modifyDexterity': instance.modifyDexterity,
      'modifyStrength': instance.modifyStrength,
    };
