import 'package:flutter/cupertino.dart';

class BmiProvider extends ChangeNotifier {
  bool isPressed = false;
  bool isMale = false;

  double height = 0;
  int weight = 0;
  int age = 0;
  double bmi = 0;
  String resultText = '';

  void buttonPress() {
    isPressed = !isPressed;
    isMale = !isMale;

    notifyListeners();
  }

  void addValue(String type) {
    if (type == "weight") {
      weight++;
    } else {
      age++;
    }
    notifyListeners();
  }

  void removeValue(String type) {
    if (type == "weight") {
      weight--;
    } else {
      age--;
    }
    notifyListeners();
  }

  void changeSlider(double value) {
    height = value;
  }

  void calculateBMI() {
    bmi = weight / (height / 100 * height / 100);

    if (bmi < 18.5) {
      resultText = 'Underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      resultText = 'Normal';
    } else if (bmi >= 25 && bmi < 29.9) {
      resultText = 'Overweight';
    } else {
      resultText = 'Obese';
    }
    notifyListeners();
  }
}
