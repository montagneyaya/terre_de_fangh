// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add-natural-damages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNaturalDamages _$AddNaturalDamagesFromJson(Map<String, dynamic> json) => AddNaturalDamages(
      json['damages'] as int,
    )..txtDamages = json['txt_damages'] as String;

Map<String, dynamic> _$AddNaturalDamagesToJson(AddNaturalDamages instance) => <String, dynamic>{
      'txt_damages': instance.txtDamages,
      'damages': instance.damages,
    };
