import 'dart:io';
import 'dart:math' as math;

void main() {
  print('This is a program that computes the BMI');
  print('enter the value of your weight in kgs');
  double? kgs = double.parse(stdin.readLineSync()!);
  print('enter the value of your height in mtrs');
  double? ht = double.parse(stdin.readLineSync()!);
  var BMI = kgs / (math.pow(ht, 2));
  if (BMI < 18.5) {
    print("Underweight");
  } else if (18.5 <= BMI && BMI < 25) {
    print("Normal");
  } else if (25 <= BMI && BMI < 30) {
    print("Overweight");
  } else {
    print("Obese");
  }
}
