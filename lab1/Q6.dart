import 'dart:io';
import 'dart:math' as math;

void main() {
  print(
      'This is a program that generates a random number between 0 and 100 and asks you to guess the correct number');
  var random = math.Random();
  var num = random.nextInt(101);
  print(num);
  while (true) {
    print('Enter a number between 0 and 100');
    var guess = int.parse(stdin.readLineSync()!);
    if (num <= 100) {
      if (guess < num) {
        print('too low! Try again');
      } else if (guess > num) {
        print('too high! Try again');
      } else {
        print("CONGRATULATIONS!Your guess is correct.");
        break;
      }
    } else {
      print('the input is invalid');
    }
  }
}
