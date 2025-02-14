import 'dart:io';
import 'dart:math' as math;
import 'dart:core';

void main() {
  var list = [];
  print('Enter the length of your list');
  int length = int.parse(stdin.readLineSync()!);
  var sum = 0;
  for (int i = 0; i < length; i++) {
    print("Enter the element at index " + "$i");
    var value = int.parse(stdin.readLineSync()!);
    list.add(value);
    sum += value;
  }
  print("The entered array is " + "$list");
  print("The sum of the values in the array is " + "$sum");
}
