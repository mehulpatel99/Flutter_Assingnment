import 'dart:io';
import 'dart:math';

void main() {
  print("enter your radius of the circle ");
  double? radius = double.parse(stdin.readLineSync()!);

  double area = pi * radius * radius;
  print("your area of the circle is $area");
}
