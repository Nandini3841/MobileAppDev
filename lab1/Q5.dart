import 'dart:io';
import 'dart:math' as math;

void main() {
  print('This is a program that generates a random number between 50 and 70');
  var random = math.Random();
  print(50 + random.nextInt(70 - 50));
}
