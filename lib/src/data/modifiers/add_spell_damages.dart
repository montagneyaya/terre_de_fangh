import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_spell_damages.freezed.dart';
part 'add_spell_damages.g.dart';

@freezed
abstract class AddSpellDamages with _$AddSpellDamages {
  const factory AddSpellDamages({
    @Default(0) int damages,
    @Default('') String txtDamages,
  }) = _AddSpellDamages;

  // JSON serialization
  factory AddSpellDamages.fromJson(Map<String, dynamic> json) =>
      _$AddSpellDamagesFromJson(json);

  // Private constructor for freezed
  const AddSpellDamages._();

  @override
  String toString() {
    return txtDamages;
  }
}
