import 'dart:io';
import 'dart:math' as math;

void main() {
  print('This is a program adds integers within the given range');
  print('Enter the first number');
  var first = int.parse(stdin.readLineSync()!);
  print('Enter the second number');
  var second = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = first + 1; i < second; i++) {
    sum += i;
  }
  print("The sum of numbers between " +
      "$first" +
      " and " +
      "$second" +
      " is " +
      "$sum");
}
