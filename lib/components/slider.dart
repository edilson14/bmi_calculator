import 'package:flutter/material.dart';

//Constants
import '../environments/constants.dart';

class MySlider extends StatefulWidget {
  int height;
  MySlider(this.height);
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Altura',
          style: kLabelStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              widget.height.toString(),
              style: kNumberStyle,
            ),
            Text(
              'cm',
              style: kLabelStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            thumbColor: kActiveSlideColor,
            overlayColor: Color(0X29EB1555),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
            inactiveTrackColor: kInactiveSlideColor,
          ),
          child: Slider(
            value: widget.height.toDouble(),
            onChanged: (double newValue) {
              setState(() {
                widget.height = newValue.round();
              });
            },
            min: kMinSliderValue,
            max: kMaxSliderValue,
          ),
        )
      ],
    );
  }
}
