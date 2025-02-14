import 'dart:io';
import 'dart:math' as math;

void main() {
  //Q1
  print('This is a program that computes the area and volume of the cylinder');
  print('enter the value of the radius');
  double? rad = double.parse(stdin.readLineSync()!);
  print('enter the value of the length');
  double? length = double.parse(stdin.readLineSync()!);
  var area = rad * rad * math.pi;
  var volume = area * length;
  print("The area of the cylinder is" + " $area" + " sq units");
  print("The volume of the cylinder is" + " $volume" + " cube units");
}
