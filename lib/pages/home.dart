import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//PAGES
import 'resultPage.dart';

//UTILS
import '../models/calculatorbrain.dart';

///Components
import '../components/card.dart';
import '../components/icon_content.dart';
import '../components/slider.dart';
import '../components/controlers.dart';
import '../components/bottomButton.dart';

/// Environments and Constants
import '../environments/constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int startHeight = 180;
  int startWeight = 60;
  int startAge = 18;

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
                    backgroundColor: selectedGender == ButtonsGender.maleButton
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      contentText: 'Masculino',
                      cardIcon: FontAwesomeIcons.mars,
                    ),
                    onTapCallBack: () {
                      setState(() {
                        selectedGender = ButtonsGender.maleButton;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor:
                        selectedGender == ButtonsGender.femaleButton
                            ? kActiveCardColor
                            : kInactiveCardColor,
                    cardChild: IconContent(
                      contentText: 'Feminino',
                      cardIcon: FontAwesomeIcons.venus,
                    ),
                    onTapCallBack: () {
                      setState(() {
                        selectedGender = ButtonsGender.femaleButton;
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
                    backgroundColor: kActiveCardColor,
                    cardChild: MySlider(startHeight),
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
                    backgroundColor: kActiveCardColor,
                    cardChild: Controller(
                      label: 'Peso',
                      value: startWeight,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backgroundColor: kActiveCardColor,
                    cardChild: Controller(
                      label: 'Idade',
                      value: startAge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: 'Calcular',
            onPressCallBack: () {
              CalculatorBrain calculator = new CalculatorBrain(
                height: startHeight,
                weight: startWeight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calculator.calculateBMI(),
                    bmiResultText: calculator.getResult(),
                    interpretation: calculator.getInterpetation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
