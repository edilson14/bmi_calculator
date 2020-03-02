import 'package:flutter/material.dart';

//Genders Buttons
const Color kActiveCardColor = Color(0XFF1D1E33);
const Color kInactiveCardColor = Color(0XFF111328);
Color kMaleButtonColor = kInactiveCardColor;
Color kFemaleButtonColor = kInactiveCardColor;

enum ButtonsGender { maleButton, femaleButton }
ButtonsGender selectedGender;

// Styles Texts
const kLabelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0XFF8D8E98),
);
const kNumberStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 50.0,
);

// Sliders
const double kMinSliderValue = 120.0;
const double kMaxSliderValue = 220.0;
const Color kActiveSlideColor = Color(0XFFEB1555);
const Color kInactiveSlideColor = Colors.grey;
