import 'wand.dart';

class Wizard {
  late String _name;
  late int _hp;
  late int _mp;
  late Wand _wand;

  String get name => _name;

  int get hp => _hp;

  int get mp => _mp;

  Wand get wand => _wand;

  set wizardNameValidation(String name) {
    if (name.length < 3) {
      print("Wizard의 이름은 최소 3자 이상이여야 합니다");
      throw Exception("Wizard의 이름은 최소 3자 이상이여야 합니다");
    }

    _name = name;
  }

  set wizardHpValidation(int hp) {
    if (hp < 0) {
      print("Wizard의 HP가 0보다 작아서 0으로 설정합니다");
      _hp = 0;
    } else {
      _hp = hp;
    }
  }

  set wizardMpValidation(int mp) {
    if (mp <= 0) {
      throw Exception("Wizard의 MP는 0보다 작을 수가 없습니다");
    }

    _mp = mp;
  }

  set wizardWandValidation(Wand wand) {
    _wand = wand;
  }

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand wand,
  }) {
    wizardNameValidation = name;
    wizardMpValidation = mp;
    wizardHpValidation = hp;
    wizardWandValidation = wand;
  }
}
