import 'package:flutter/material.dart';

import 'pages/home.dart';

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
    );
  }
}

void main() => runApp(BMICalculator());
