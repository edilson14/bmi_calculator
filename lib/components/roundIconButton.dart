import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPressedCallBack;
  final IconData icon;
  RoundIconButton({
    @required this.onPressedCallBack,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressedCallBack,
      child: Icon(icon),
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Color(0XFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
