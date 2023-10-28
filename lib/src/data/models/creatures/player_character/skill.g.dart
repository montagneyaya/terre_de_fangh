// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skill _$SkillFromJson(Map<String, dynamic> json) => Skill(
      json['skill'] as String,
      json['described'] as String,
      selected: json['selected'] as bool,
    );

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
      'skill': instance.skill,
      'described': instance.described,
      'selected': instance.selected,
    };
