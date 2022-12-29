// Write a dart code to create a Circle class with area() and perimeter() function to find area and
// perimeter of the circle.
import 'dart:io';

class Circle {
  double r;
  Circle(this.r);
  double area() => 3.14 * r * r;
  double perimeter() => 2 * 3.14 * r;
}

void main(List<String> args) {
  Circle circle = Circle(double.parse(stdin.readLineSync()!));
  print('Circle Area: ${circle.area()}, perimeter: ${circle.perimeter()}');
}
