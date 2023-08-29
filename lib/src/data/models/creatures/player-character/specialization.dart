import 'package:json_annotation/json_annotation.dart';
part 'specialization.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Specialization {
  Specialization(this.specialization);

  String specialization;

  @override
  String toString() {
    return this.specialization;
  }

  factory Specialization.fromJson(Map<String, dynamic> json) => _$SpecializationFromJson(json);
  Map<String, dynamic> toJson() => _$SpecializationToJson(this);
}
