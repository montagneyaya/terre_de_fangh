// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_People _$PeopleFromJson(Map<String, dynamic> json) => _People(
  name: json['name'] as String? ?? 'Monster',
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
  attack: (json['attack'] as num?)?.toInt() ?? 8,
  parry: (json['parry'] as num?)?.toInt() ?? 10,
  hp: (json['hp'] as num?)?.toInt() ?? 30,
  pr: (json['pr'] as num?)?.toInt() ?? 0,
  load: (json['load'] as num?)?.toInt() ?? 0,
  jobs:
      (json['jobs'] as List<dynamic>?)
          ?.map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList() ??
      Job.jobs,
  birthSkills:
      (json['birthSkills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  optionalSkills:
      (json['optionalSkills'] as List<dynamic>?)
          ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList() ??
      Skill.basics,
);

Map<String, dynamic> _$PeopleToJson(_People instance) => <String, dynamic>{
  'name': instance.name,
  'courage': instance.courage,
  'intellect': instance.intellect,
  'charisma': instance.charisma,
  'dexterity': instance.dexterity,
  'strength': instance.strength,
  'attack': instance.attack,
  'parry': instance.parry,
  'hp': instance.hp,
  'pr': instance.pr,
  'load': instance.load,
  'jobs': instance.jobs,
  'birthSkills': instance.birthSkills,
  'optionalSkills': instance.optionalSkills,
};
