import 'dart:io';

void main() {
  print("enter your 1 number ");
  int? num1 = int.parse(stdin.readLineSync()!);

  print("enter your 2 number ");
  int? num2 = int.parse(stdin.readLineSync()!);

  int num3 = num1 + num2;
  print("your add is = $num3");

  int num4 = num1 - num2;
  print("your sub is = $num4");

  int num5 = num1 * num2;
  print("your multiply is = $num5");

  double num7 = num1 / num2;
  print("your divide is = $num7");
}
