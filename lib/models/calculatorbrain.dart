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
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpetation() {
    if (_bmi >= 25) {
      return 'Você se encontra sobre a massa corporal Recomendada. Tente exercitar um pouco!';
    } else if (_bmi >= 18.5) {
      return 'Indice de massa corporal normal. Bom Trabalho!';
    } else {
      return 'Você se encontra abaixo da massa corporal recomendada. Coma um pouco mais e faça mais exercício!';
    }
  }
}
