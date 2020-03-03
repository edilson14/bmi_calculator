import 'package:flutter/material.dart';

//Environments
import '../environments/constants.dart';

Widget buildResultWidget({
  @required String result,
  @required String resultText,
  @required String resultInterpretation,
}) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          resultText.toUpperCase(),
          style: kResultTextStyle,
        ),
        Text(
          result,
          style: kBIMTexStyle,
        ),
        Text(
          resultInterpretation,
          style: kBodyTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
