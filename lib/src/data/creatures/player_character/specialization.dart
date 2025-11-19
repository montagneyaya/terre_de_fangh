import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization.freezed.dart';
part 'specialization.g.dart';

@freezed
abstract class Specialization with _$Specialization {
  const factory Specialization({
    @Default('none') String name,
  }) = _Specialization;

  // JSON serialization
  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);

  // Private constructor for freezed
  const Specialization._();

  // Factory constructor
  // Specializations
  static const Specialization adathie = Specialization(name: 'Adathie');
  static const Specialization malgar = Specialization(name: 'Malgar');
  static const Specialization youclidh = Specialization(name: 'Youclidh');
  static const Specialization dlul = Specialization(name: 'Dlul');
  static const Specialization slanouch = Specialization(name: 'Slanouch');
  static const Specialization braav = Specialization(name: 'Braav');
  static const Specialization khornettoh = Specialization(name: 'Khornettoh');
  static const Specialization general = Specialization(name: 'General');
  static const Specialization battle = Specialization(name: 'Battle');
  static const Specialization fire = Specialization(name: 'Fire');
  static const Specialization makeover = Specialization(name: 'Makeover');
  static const Specialization thermodynamic = Specialization(
    name: 'Thermodynamic',
  );
  static const Specialization invocation = Specialization(name: 'Invocation');
  static const Specialization necromancy = Specialization(name: 'Necromancy');
  static const Specialization illusion = Specialization(name: 'Illusion');
  static const Specialization waterAndIce = Specialization(
    name: 'Water and Ice',
  );
  static const Specialization earth = Specialization(name: 'Earth');
  static const Specialization air = Specialization(name: 'Air');
  static const Specialization tzinntch = Specialization(name: 'Tzinntch');
  static const Specialization mechanic = Specialization(name: 'Mechanic');
  static const Specialization designerBlacksmith = Specialization(
    name: 'Blacksmith',
  );
  static const Specialization cabinetmaker = Specialization(
    name: 'Cabinetmaker',
  );
  static const Specialization leatherCraftsman = Specialization(
    name: 'Leather Craftsman',
  );
  static const Specialization tailor = Specialization(name: 'Tailor');
  static const Specialization cook = Specialization(name: 'Cook');
  static const Specialization alchemist = Specialization(name: 'Alchemist');
  static const Specialization doctor = Specialization(name: 'Doctor');
  static const Specialization basketMaker = Specialization(
    name: 'Basket Maker',
  );
  static const Specialization goblin = Specialization(name: 'Goblin');
  static const Specialization none = Specialization(name: 'None');

  // Lists of specializations for each job
  static const List<Specialization> paladin = [
    dlul,
    slanouch,
    braav,
    khornettoh,
  ];
  static const List<Specialization> cleric = [
    adathie,
    malgar,
    youclidh,
    ...paladin,
  ];
  static const List<Specialization> wizard = [
    general,
    battle,
    fire,
    makeover,
    thermodynamic,
    invocation,
    necromancy,
    illusion,
    waterAndIce,
    earth,
    air,
    tzinntch,
  ];
  static const List<Specialization> engineer = [
    mechanic,
    designerBlacksmith,
    cabinetmaker,
    leatherCraftsman,
    tailor,
    cook,
    alchemist,
    doctor,
    basketMaker,
    goblin,
  ];
}
