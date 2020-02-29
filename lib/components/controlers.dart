import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Controler extends StatelessWidget {
  final String label;
  Controler({this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        Row(
          children: <Widget>[
            OutlineButton(
              onPressed: null,
              child: Icon(
                Icons.add,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            OutlineButton(
              color: Colors.white,
              onPressed: null,
              child: Icon(
                FontAwesomeIcons.minus,
              ),
            ),
          ],
        )
      ],
    );
  }
}
