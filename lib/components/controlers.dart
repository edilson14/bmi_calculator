import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Components
import 'roundIconButton.dart';
// Environments

import '../environments/constants.dart';

class Controller extends StatefulWidget {
  final String label;
  final int value;
  final Function onPlusPressed;
  final Function onMinusPressed;

  Controller({
    @required this.label,
    @required this.value,
    @required this.onMinusPressed,
    @required this.onPlusPressed,
  });
  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
//  void _increment() {
//    setState(() {
//      widget.value++;
//    });
//  }

//  void _decrement() {
//    setState(() {
//      widget.value--;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.label,
          style: kLabelStyle,
        ),
        Text(
          widget.value.toString(),
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              onPressedCallBack: widget.onMinusPressed,
              icon: FontAwesomeIcons.minus,
            ),
            SizedBox(
              width: 20,
            ),
            RoundIconButton(
              onPressedCallBack: widget.onPlusPressed,
              icon: FontAwesomeIcons.plus,
            ),
          ],
        )
      ],
    );
  }
}
