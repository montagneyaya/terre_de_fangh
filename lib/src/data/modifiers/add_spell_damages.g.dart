// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_spell_damages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddSpellDamages _$AddSpellDamagesFromJson(Map<String, dynamic> json) =>
    _AddSpellDamages(
      damages: (json['damages'] as num?)?.toInt() ?? 0,
      txtDamages: json['txtDamages'] as String? ?? '',
    );

Map<String, dynamic> _$AddSpellDamagesToJson(_AddSpellDamages instance) =>
    <String, dynamic>{
      'damages': instance.damages,
      'txtDamages': instance.txtDamages,
    };
