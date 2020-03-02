import 'package:flutter/material.dart';

import '../environments/constants.dart';

class IconContent extends StatelessWidget {
  final IconData cardIcon;
  final String contentText;
  IconContent({@required this.cardIcon, @required this.contentText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          contentText,
          style: kLabelStyle,
        )
      ],
    );
  }
}
