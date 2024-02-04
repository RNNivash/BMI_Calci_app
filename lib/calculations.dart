import 'dart:math';
class Calculations{
  Calculations({required this.height , required this.weight});
  final int height;
  final int weight;
  late double _bmi;
  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpetation(){
    if(_bmi >= 25){
      return 'Your BMI indicates Overweight. Try to incorporate regular exercise and a balanced diet into your lifestyle.';
    }else if(_bmi > 18.5){
      return 'Your BMI indicates Normal weight. Keep up the healthy habits!';
    }else{
      return 'Your BMI indicates Underweight. Ensure you are consuming enough nutrients and consider consulting a healthcare professional.';
    }
  }
}