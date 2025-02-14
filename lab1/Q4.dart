import 'dart:io';
import 'dart:math' as math;

void main() {
  print('This is a program displays the animal of the year');
  print('enter the year');
  int? yr = int.parse(stdin.readLineSync()!);
  switch (yr % 12) {
    case 0:
      print("Monkey");
      break;
    case 1:
      print("Rooster");
      break;
    case 2:
      print("Dog");
      break;
    case 3:
      print("Pig");
      break;
    case 4:
      print("Rat");
      break;
    case 5:
      print("Ox");
      break;
    case 6:
      print("Tiger");
      break;
    case 7:
      print("Rabbit");
      break;
    case 8:
      print("Dragon");
      break;
    case 9:
      print("Snake");
      break;
    case 10:
      print("Horse");
      break;
    case 11:
      print("Sheep");
      break;
  }
}
