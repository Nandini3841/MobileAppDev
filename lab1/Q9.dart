import 'dart:io';
import 'dart:math' as math;
import 'dart:core';

class Rectangle {
  int? width;
  int? height;

  Rectangle(this.width, this.height);

  int calculateArea(int width, int height) {
    return width * height;
  }

  int calculatePerimeter(int width, int height) {
    return width + (2 * height);
  }
}

void main() {
  Rectangle rect = new Rectangle(10, 20);
  print(rect.calculateArea(10, 20));
  print(rect.calculatePerimeter(10, 20));
}
