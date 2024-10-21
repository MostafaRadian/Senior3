import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int num = 0;

  void increment() {
    num++;
    notifyListeners();
  }

  void decrement() {
    num--;
    notifyListeners();
  }
}
