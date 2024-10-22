import 'package:flutter/cupertino.dart';

class LiveTextProvider with ChangeNotifier {
  String words = '';

  void addText(String value) {
    words = value;
    notifyListeners();
  }
}
