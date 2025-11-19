import 'dart:math';

class Dices {
  int d2() => Random().nextInt(2) + 1;
  int d4() => Random().nextInt(4) + 1;
  int d6() => Random().nextInt(6) + 1;
  int d8() => Random().nextInt(8) + 1;
  int d10() => Random().nextInt(10) + 1;
  int d12() => Random().nextInt(12) + 1;
  int d20() => Random().nextInt(20) + 1;
  int d100() => Random().nextInt(100) + 1;
}
