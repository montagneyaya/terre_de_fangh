import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_natural_damages.freezed.dart';
part 'add_natural_damages.g.dart';

@freezed
abstract class AddNaturalDamages with _$AddNaturalDamages {
  const factory AddNaturalDamages({
    @Default(0) int damages,
    @Default('') String txtDamages,
  }) = _AddNaturalDamages;

  // JSON serialization
  factory AddNaturalDamages.fromJson(Map<String, dynamic> json) =>
      _$AddNaturalDamagesFromJson(json);

  // Private constructor for freezed
  const AddNaturalDamages._();

  @override
  String toString() {
    return txtDamages;
  }
}
