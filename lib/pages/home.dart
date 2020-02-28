import 'package:flutter/material.dart';
import '../components/card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ReusableCard(),
              ReusableCard(),
            ],
          ),
          Row(
            children: <Widget>[
              ReusableCard(),
            ],
          ),
          Row(
            children: <Widget>[
              ReusableCard(),
              ReusableCard(),
            ],
          ),
        ],
      ),
    );
  }
}
