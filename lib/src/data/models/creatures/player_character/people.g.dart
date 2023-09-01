// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

People _$PeopleFromJson(Map<String, dynamic> json) => People(
      json['people'] as String,
      (json['courage'] as List<dynamic>).map((e) => e as int).toList(),
      (json['intellect'] as List<dynamic>).map((e) => e as int).toList(),
      (json['charisma'] as List<dynamic>).map((e) => e as int).toList(),
      (json['dexterity'] as List<dynamic>).map((e) => e as int).toList(),
      (json['strength'] as List<dynamic>).map((e) => e as int).toList(),
      json['attack'] as int,
      json['parry'] as int,
      json['hp'] as int,
      json['pr'] as int,
      json['load'] as int,
      (json['jobs'] as List<dynamic>).map((e) => Job.fromJson(e as Map<String, dynamic>)).toList(),
      (json['birth_skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['optional_skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PeopleToJson(People instance) => <String, dynamic>{
      'people': instance.people,
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
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
      'birth_skills': instance.birthSkills.map((e) => e.toJson()).toList(),
      'optional_skills': instance.optionalSkills.map((e) => e.toJson()).toList(),
    };
