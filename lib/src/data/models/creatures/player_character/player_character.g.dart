// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerCharacter _$PlayerCharacterFromJson(Map<String, dynamic> json) => PlayerCharacter(
      json['name_creature'] as String,
      json['gender'] as String,
      json['people'] as String,
      json['job'] as String,
      json['specialization'] as String,
      json['health_points'] as int,
      json['astral_points'] as int,
      json['fate_points'] as int,
      json['max_load'] as int,
      json['attack'] as int,
      json['parry'] as int,
      json['courage'] as int,
      json['intellect'] as int,
      json['charisma'] as int,
      json['dexterity'] as int,
      json['strength'] as int,
      json['max_natural_p_r'] as int,
      (json['skills'] as List<dynamic>).map((e) => Skill.fromJson(e as Map<String, dynamic>)).toList(),
    )
      ..experience = json['experience'] as int
      ..throwAttack = json['throw_attack'] as int
      ..evade = json['evade'] as int
      ..spellResistance = json['spell_resistance'] as int
      ..magicPR = json['magic_p_r'] as int
      ..weapons = (json['weapons'] as List<dynamic>)
          .map((e) => Weapon.fromJson(e as Map<String, dynamic>))
          .toList()
      ..armors = (json['armors'] as List<dynamic>)
          .map((e) => Armor.fromJson(e as Map<String, dynamic>))
          .toList()
      ..actualHealthPoints = json['actual_health_points'] as int
      ..actualAstralPoints = json['actual_astral_points'] as int
      ..level = json['level'] as int
      ..currentLoad = json['current_load'] as int
      ..physicalSpell = json['physical_spell'] as int
      ..psychicSpell = json['psychic_spell'] as int
      ..engineer = json['engineer'] as int
      ..addNaturalDamages = (json['add_natural_damages'] as List<dynamic>)
          .map((e) => AddNaturalDamages.fromJson(e as Map<String, dynamic>))
          .toList()
      ..addSpellDamages = (json['add_spell_damages'] as List<dynamic>)
          .map((e) => AddSpellDamages.fromJson(e as Map<String, dynamic>))
          .toList()
      ..other =
          (json['other'] as List<dynamic>).map((e) => Item.fromJson(e as Map<String, dynamic>)).toList()
      ..modifyAttack = json['modify_attack'] as int
      ..modifyThrowAttack = json['modify_throw_attack'] as int
      ..modifyParry = json['modify_parry'] as int
      ..modifyEvade = json['modify_evade'] as int
      ..naturalPR = json['natural_p_r'] as int
      ..modifyCourage = json['modify_courage'] as int
      ..modifyIntellect = json['modify_intellect'] as int
      ..modifyCharisma = json['modify_charisma'] as int
      ..modifyDexterity = json['modify_dexterity'] as int
      ..modifyStrength = json['modify_strength'] as int;

Map<String, dynamic> _$PlayerCharacterToJson(PlayerCharacter instance) => <String, dynamic>{
      'name_creature': instance.nameCreature,
      'people': instance.people,
      'health_points': instance.healthPoints,
      'astral_points': instance.astralPoints,
      'experience': instance.experience,
      'attack': instance.attack,
      'throw_attack': instance.throwAttack,
      'parry': instance.parry,
      'evade': instance.evade,
      'spell_resistance': instance.spellResistance,
      'courage': instance.courage,
      'magic_p_r': instance.magicPR,
      'weapons': instance.weapons.map((e) => e.toJson()).toList(),
      'armors': instance.armors.map((e) => e.toJson()).toList(),
      'actual_health_points': instance.actualHealthPoints,
      'actual_astral_points': instance.actualAstralPoints,
      'gender': instance.gender,
      'job': instance.job,
      'specialization': instance.specialization,
      'fate_points': instance.fatePoints,
      'level': instance.level,
      'current_load': instance.currentLoad,
      'max_load': instance.maxLoad,
      'max_natural_p_r': instance.maxNaturalPR,
      'skills': instance.skills.map((e) => e.toJson()).toList(),
      'intellect': instance.intellect,
      'charisma': instance.charisma,
      'dexterity': instance.dexterity,
      'strength': instance.strength,
      'physical_spell': instance.physicalSpell,
      'psychic_spell': instance.psychicSpell,
      'engineer': instance.engineer,
      'add_natural_damages': instance.addNaturalDamages.map((e) => e.toJson()).toList(),
      'add_spell_damages': instance.addSpellDamages.map((e) => e.toJson()).toList(),
      'other': instance.other.map((e) => e.toJson()).toList(),
      'modify_attack': instance.modifyAttack,
      'modify_throw_attack': instance.modifyThrowAttack,
      'modify_parry': instance.modifyParry,
      'modify_evade': instance.modifyEvade,
      'natural_p_r': instance.naturalPR,
      'modify_courage': instance.modifyCourage,
      'modify_intellect': instance.modifyIntellect,
      'modify_charisma': instance.modifyCharisma,
      'modify_dexterity': instance.modifyDexterity,
      'modify_strength': instance.modifyStrength,
    };
