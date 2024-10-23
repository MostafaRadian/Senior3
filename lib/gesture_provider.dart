import 'package:flutter/cupertino.dart';

class GestureProvider extends ChangeNotifier {
  bool isPressed = false;

  void pressed() {
    isPressed = !isPressed;
    notifyListeners();
  }
}
