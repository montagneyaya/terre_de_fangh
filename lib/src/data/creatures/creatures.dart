import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myapp/src/data/creatures/player_character/people.dart';

part 'creatures.freezed.dart';
part 'creatures.g.dart';

@freezed
abstract class Creatures with _$Creatures {
  const factory Creatures({
    @Default('') String name,
    @Default(People.monster) People people,
    @Default(0) int healthPoints,
    @Default(0) int astralPoints,
    @Default(0) int experience,
    @Default(0) int attack,
    @Default(0) int throwAttack,
    @Default(0) int parry,
    @Default(0) int evade,
    @Default(0) int spellResistance,
    @Default(0) int courage,
    @Default(0) int naturalPR,
    @Default(0) int magicPR,
    @Default(<String>[]) List<String> weapons,
    @Default(<String>[]) List<String> armors,
    @Default(0) int actualHealthPoints,
    @Default(0) int actualAstralPoints,
  }) = _Creatures;

  // JSON serialization
  factory Creatures.fromJson(Map<String, dynamic> json) =>
      _$CreaturesFromJson(json);

  // Private constructor for freezed
  const Creatures._();
}
