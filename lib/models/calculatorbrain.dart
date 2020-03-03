import 'dart:math';

class CalculatorBrain {
  int weight;
  int height;
  double _bmi;

  CalculatorBrain({
    this.height,
    this.weight,
  });

  String calculateBMI() {
    ///dived [height] to convert cm to meters
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Acima do Peso';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpetation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
