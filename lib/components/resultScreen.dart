import 'package:flutter/material.dart';

//Environments
import '../environments/constants.dart';

Widget buildResultWidget() => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Normal',
          style: kResultTextStyle,
        ),
        Text(
          '12.0',
          style: kBIMTexStyle,
        ),
        Text(
          'typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          style: kBodyTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
