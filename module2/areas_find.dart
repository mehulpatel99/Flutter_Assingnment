import 'dart:io';
import 'dart:math';

void main() {
  print("Menu:");
  print("1. Area of Triangle");
  print("2. Area of Rectangle");
  print("3. Area of Circle");
  print("Enter your choice:");

  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("enter your base :");
    double? num = double.parse(stdin.readLineSync()!);
    print("enter your height :");
    double? num1 = double.parse(stdin.readLineSync()!);

    double triangleArea = 0.5 * num * num1;
    print("your triangle area is $triangleArea");
  } else if (choice == 2) {
    print("enter your width :");
    double? num = double.parse(stdin.readLineSync()!);
    print("enter your length :");
    double? num1 = double.parse(stdin.readLineSync()!);
    double rectangleArea = num * num1;
    print("your triangle area is $rectangleArea");
  } else if (choice == 3) {
    print("Enter the radius of the circle : ");
    double? radius = double.parse(stdin.readLineSync()!);

    double circleArea = pi * pow(radius, 2);
    print("your circle area is $circleArea");
  } else {
    print("Invalid choice");
  }
}
