// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      json['job'] as String,
      (json['courage'] as List<dynamic>).map((e) => e as int).toList(),
      (json['intellect'] as List<dynamic>).map((e) => e as int).toList(),
      (json['charisma'] as List<dynamic>).map((e) => e as int).toList(),
      (json['dexterity'] as List<dynamic>).map((e) => e as int).toList(),
      (json['strength'] as List<dynamic>).map((e) => e as int).toList(),
      json['attack'] as int,
      json['parry'] as int,
      json['hp'] as int,
      json['ap'] as int,
      json['pr'] as int,
      (json['specialization'] as List<dynamic>)
          .map((e) => Specialization.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['inherited_skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['optional_skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'job': instance.job,
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
      'specialization': instance.specialization.map((e) => e.toJson()).toList(),
      'inherited_skills': instance.inheritedSkills.map((e) => e.toJson()).toList(),
      'optional_skills': instance.optionalSkills.map((e) => e.toJson()).toList(),
    };
