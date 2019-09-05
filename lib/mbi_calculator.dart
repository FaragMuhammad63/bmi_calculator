import 'dart:math';

class BMICalculator{
  final double height;
  final double weight;
  double _bmi;

  BMICalculator({this.height, this.weight});

  double calculateBMI(){
    _bmi = weight/pow(height/100, 2);
    return _bmi;
  }
  String getResult(){
    double bmi = calculateBMI();
    if(bmi>=25){
      return 'OverWeight';
    }
    else if(bmi>18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }

  }

  String getInterpretation(){
    double bmi = calculateBMI();
    if(bmi>=25){
      return 'You have a heighr normal weight. Try to exercise more.';
    }
    else if(bmi>18.5){
      return 'You have a normal weight. Good job!.';
    }
    else{
      return 'You have a lower normal weight. You can eat a bit more.';
    }
  }
}