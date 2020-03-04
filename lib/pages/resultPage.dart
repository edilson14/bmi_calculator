import 'package:flutter/material.dart';

//Components
import '../components/card.dart';
import '../components/resultScreen.dart';
import '../components/bottomButton.dart';

//Constants
import '../environments/constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiResultText;
  final String interpretation;

  ResultPage({
    @required this.bmiResult,
    @required this.bmiResultText,
    @required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MASSA COPORAL'),
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
              cardChild: buildResultWidget(
                result: bmiResult,
                resultInterpretation: interpretation,
                resultText: bmiResultText,
              ),
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
