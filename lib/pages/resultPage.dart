import 'package:flutter/material.dart';

//Components
import '../components/card.dart';
import '../components/resultScreen.dart';
import '../components/bottomButton.dart';

//Constants
import '../environments/constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Resultado',
                  style: kTitleStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              backgroundColor: kActiveCardColor,
              cardChild: buildResultWidget(),
            ),
          ),
          BottomButton(
            label: 'RECALCULAR',
            onPressCallBack: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
