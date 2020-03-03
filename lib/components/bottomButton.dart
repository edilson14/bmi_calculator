import 'package:flutter/material.dart';

import '../environments/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onPressCallBack;
  final String label;

  BottomButton({
    @required this.onPressCallBack,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFEB1555),
      height: 80.0,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 12),
      child: Center(
        child: FlatButton(
          onPressed: onPressCallBack,
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
