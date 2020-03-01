import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///Components
import '../components/card.dart';
import '../components/icon_content.dart';

/// Environments and Constants
import '../environments/constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color femaleCardColour = Constants.inactiveCardColor;
  Color maleCardColour = Constants.inactiveCardColor;

  void changeCardColor(ButtonsGender selectedGender) {
    if (selectedGender == ButtonsGender.maleButton) {
      if (maleCardColour == Constants.inactiveCardColor) {
        maleCardColour = Constants.activeCardColor;
      } else {
        maleCardColour = Constants.inactiveCardColor;
      }
    } else {
      if (femaleCardColour == Constants.inactiveCardColor) {
        femaleCardColour = Constants.activeCardColor;
        maleCardColour = Constants.inactiveCardColor;
      } else {
        femaleCardColour = Constants.inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backgroundColor: maleCardColour,
                    cardChild: IconContent(
                      contentText: 'MALE',
                      cardIcon: FontAwesomeIcons.mars,
                    ),
                    onTapCallBack: () {
                      setState(() {
                        changeCardColor(ButtonsGender.maleButton);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: femaleCardColour,
                    cardChild: IconContent(
                      contentText: 'FEMALE',
                      cardIcon: FontAwesomeIcons.venus,
                    ),
                    onTapCallBack: () {
                      setState(() {
                        changeCardColor(ButtonsGender.femaleButton);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backgroundColor: Constants.activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backgroundColor: Constants.activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: Constants.activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0XFFEB1555),
            height: 80.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
            child: Center(
              child: FlatButton(
                onPressed: null,
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
