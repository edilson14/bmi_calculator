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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INDICE MASSA CORPORAL'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backgroundColor:
                        Constants.selectedGender == ButtonsGender.maleButton
                            ? Constants.activeCardColor
                            : Constants.inactiveCardColor,
                    cardChild: IconContent(
                      contentText: 'MALE',
                      cardIcon: FontAwesomeIcons.mars,
                    ),
                    onTapCallBack: () {
                      setState(() {
                        Constants.selectedGender = ButtonsGender.maleButton;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor:
                        Constants.selectedGender == ButtonsGender.femaleButton
                            ? Constants.activeCardColor
                            : Constants.inactiveCardColor,
                    cardChild: IconContent(
                      contentText: 'FEMALE',
                      cardIcon: FontAwesomeIcons.venus,
                    ),
                    onTapCallBack: () {
                      setState(() {
                        Constants.selectedGender = ButtonsGender.femaleButton;
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
