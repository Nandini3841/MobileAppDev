import 'dart:io';
import 'dart:math' as math;

void main() {
  print('Enter a random integer');
  var num = int.parse(stdin.readLineSync()!);
  if (num >= 0) {
    if (num % 2 == 0) {
      print("$num" + " is even");
    } else {
      print("$num" + " is odd");
    }
  } else {
    print("Invalid output");
  }
}
