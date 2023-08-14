import 'dart:io';
import 'dart:math';

void main() {
  print("enter your height  of the triangle ");
  double? height = double.parse(stdin.readLineSync()!);

  print("enter your base  of the triangle ");
  double? base = double.parse(stdin.readLineSync()!);

  double area = 0.5 * base * height;

  print("The area of the triangle is: $area");
}
