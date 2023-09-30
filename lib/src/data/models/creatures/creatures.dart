import 'package:terre_de_fangh/src/data/models/items/armor.dart';
import 'package:terre_de_fangh/src/data/models/items/weapon.dart';
import 'package:terre_de_fangh/src/lang/FR_fr/peoples.dart';

abstract class Creatures {
  String nameCreature = '';
  String people = LangPeoples.monster;
  int healthPoints = 0;
  int astralPoints = 0;
  int experience = 0;
  int attack = 0;
  int throwAttack = 0;
  int parry = 0;
  int evade = 0;
  int spellResistance = 0;
  int courage = 0;
  int naturalPR = 0;
  int magicPR = 0;
  List<Weapon> weapons = [];
  List<Armor> armors = [];
  int actualHealthPoints = 0;
  int actualAstralPoints = 0;
}
