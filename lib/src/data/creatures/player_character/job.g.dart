// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Job _$JobFromJson(Map<String, dynamic> json) => _Job(
  name: json['name'] as String? ?? 'None',
  courage:
      (json['courage'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [8, 20],
  intellect:
      (json['intellect'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [8, 20],
  charisma:
      (json['charisma'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [8, 20],
  dexterity:
      (json['dexterity'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [8, 20],
  strength:
      (json['strength'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const [8, 20],
  attack: (json['attack'] as num?)?.toInt() ?? 0,
  parry: (json['parry'] as num?)?.toInt() ?? 0,
  hp: (json['hp'] as num?)?.toInt() ?? 0,
  ap: (json['ap'] as num?)?.toInt() ?? 0,
  pr: (json['pr'] as num?)?.toInt() ?? 0,
  specializations:
      (json['specializations'] as List<dynamic>?)
          ?.map((e) => Specialization.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [Specialization.none],
  inheritedSkills:
      (json['inheritedSkills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  optionalSkills:
      (json['optionalSkills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$JobToJson(_Job instance) => <String, dynamic>{
  'name': instance.name,
  'courage': instance.courage,
  'intellect': instance.intellect,
  'charisma': instance.charisma,
  'dexterity': instance.dexterity,
  'strength': instance.strength,
  'attack': instance.attack,
  'parry': instance.parry,
  'hp': instance.hp,
  'ap': instance.ap,
  'pr': instance.pr,
  'specializations': instance.specializations,
  'inheritedSkills': instance.inheritedSkills,
  'optionalSkills': instance.optionalSkills,
};
