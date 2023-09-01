// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_spell_damages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddSpellDamages _$AddSpellDamagesFromJson(Map<String, dynamic> json) => AddSpellDamages(
      json['damages'] as int,
    )..txtDamages = json['txt_damages'] as String;

Map<String, dynamic> _$AddSpellDamagesToJson(AddSpellDamages instance) => <String, dynamic>{
      'txt_damages': instance.txtDamages,
      'damages': instance.damages,
    };
