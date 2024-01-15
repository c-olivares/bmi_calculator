import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double get _bmi => weight / pow(height / 100, 2);

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Bajo Peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Tienes un peso corporal superior al normal. Intenta comer más sano y hacer más ejercicio.';
    } else if (_bmi > 18.5) {
      return 'Tienes un peso corporal normal. ¡Buen trabajo!';
    } else {
      return 'Tienes un peso corporal inferior al normal. Puedes comer un poco más.';
    }
  }
}
