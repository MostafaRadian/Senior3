import 'package:flutter/cupertino.dart';

class GameProvider extends ChangeNotifier {
  int countA = 0;
  int countB = 0;

  void addA({required int value}) {
    countA += value;
    notifyListeners();
  }

  void addB({required int value}) {
    countB += value;
    notifyListeners();
  }

  void resetAB() {
    countA = 0;
    countB = 0;
    notifyListeners();
  }
}
