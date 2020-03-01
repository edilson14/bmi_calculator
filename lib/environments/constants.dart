import 'package:flutter/material.dart';

class Constants {
  static const Color activeCardColor = Color(0XFF1D1E33);
  static const Color inactiveCardColor = Color(0XFF111328);

  static Color maleButtonColor = Constants.inactiveCardColor;
  static Color femaleButtonColor = Constants.inactiveCardColor;

  static ButtonsGender selectedGender;
}

enum ButtonsGender { maleButton, femaleButton }
