import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget cardChild;
  final Function onTapCallBack;
  ReusableCard(
      {@required this.backgroundColor, this.cardChild, this.onTapCallBack});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCallBack,
      child: Container(
        height: 200,
        width: 170,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: backgroundColor,
        ),
        child: cardChild,
      ),
    );
  }
}
