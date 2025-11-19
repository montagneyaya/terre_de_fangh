// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_natural_damages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddNaturalDamages _$AddNaturalDamagesFromJson(Map<String, dynamic> json) =>
    _AddNaturalDamages(
      damages: (json['damages'] as num?)?.toInt() ?? 0,
      txtDamages: json['txtDamages'] as String? ?? '',
    );

Map<String, dynamic> _$AddNaturalDamagesToJson(_AddNaturalDamages instance) =>
    <String, dynamic>{
      'damages': instance.damages,
      'txtDamages': instance.txtDamages,
    };
