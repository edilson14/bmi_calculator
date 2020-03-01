import '../environments/constants.dart';

class Functions {
  static void changeCardColor(ButtonsGender selectedGender) {
    if (selectedGender == ButtonsGender.maleButton) {
      if (Constants.maleButtonColor == Constants.inactiveCardColor) {
        Constants.maleButtonColor = Constants.activeCardColor;
      } else {
        Constants.maleButtonColor = Constants.inactiveCardColor;
      }
    } else {
      if (Constants.femaleButtonColor == Constants.inactiveCardColor) {
        Constants.femaleButtonColor = Constants.activeCardColor;
        Constants.maleButtonColor = Constants.inactiveCardColor;
      } else {
        Constants.femaleButtonColor = Constants.inactiveCardColor;
      }
    }
  }
}
